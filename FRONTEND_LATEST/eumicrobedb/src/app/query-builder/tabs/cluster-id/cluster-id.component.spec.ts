import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ClusterIdComponent } from './cluster-id.component';

describe('ClusterIdComponent', () => {
  let component: ClusterIdComponent;
  let fixture: ComponentFixture<ClusterIdComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ClusterIdComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ClusterIdComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
