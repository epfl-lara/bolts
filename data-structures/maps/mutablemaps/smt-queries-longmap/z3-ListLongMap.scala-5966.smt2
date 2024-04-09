; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77652 () Bool)

(assert start!77652)

(declare-fun b_free!16209 () Bool)

(declare-fun b_next!16209 () Bool)

(assert (=> start!77652 (= b_free!16209 (not b_next!16209))))

(declare-fun tp!56890 () Bool)

(declare-fun b_and!26593 () Bool)

(assert (=> start!77652 (= tp!56890 b_and!26593)))

(declare-fun b!904653 () Bool)

(declare-fun e!506956 () Bool)

(assert (=> b!904653 (= e!506956 true)))

(declare-datatypes ((V!29801 0))(
  ( (V!29802 (val!9364 Int)) )
))
(declare-fun lt!408271 () V!29801)

(declare-datatypes ((tuple2!12192 0))(
  ( (tuple2!12193 (_1!6106 (_ BitVec 64)) (_2!6106 V!29801)) )
))
(declare-datatypes ((List!18062 0))(
  ( (Nil!18059) (Cons!18058 (h!19204 tuple2!12192) (t!25453 List!18062)) )
))
(declare-datatypes ((ListLongMap!10903 0))(
  ( (ListLongMap!10904 (toList!5467 List!18062)) )
))
(declare-fun lt!408272 () ListLongMap!10903)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun apply!445 (ListLongMap!10903 (_ BitVec 64)) V!29801)

(assert (=> b!904653 (= lt!408271 (apply!445 lt!408272 k0!1033))))

(declare-fun b!904654 () Bool)

(declare-fun res!610543 () Bool)

(declare-fun e!506960 () Bool)

(assert (=> b!904654 (=> (not res!610543) (not e!506960))))

(declare-datatypes ((ValueCell!8832 0))(
  ( (ValueCellFull!8832 (v!11869 V!29801)) (EmptyCell!8832) )
))
(declare-datatypes ((array!53284 0))(
  ( (array!53285 (arr!25597 (Array (_ BitVec 32) ValueCell!8832)) (size!26057 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53284)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-datatypes ((array!53286 0))(
  ( (array!53287 (arr!25598 (Array (_ BitVec 32) (_ BitVec 64))) (size!26058 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53286)

(declare-fun mask!1756 () (_ BitVec 32))

(assert (=> b!904654 (= res!610543 (and (= (size!26057 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26058 _keys!1386) (size!26057 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!904655 () Bool)

(declare-fun res!610542 () Bool)

(assert (=> b!904655 (=> (not res!610542) (not e!506960))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!904655 (= res!610542 (inRange!0 i!717 mask!1756))))

(declare-fun b!904656 () Bool)

(declare-fun res!610545 () Bool)

(assert (=> b!904656 (=> (not res!610545) (not e!506960))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53286 (_ BitVec 32)) Bool)

(assert (=> b!904656 (= res!610545 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!904657 () Bool)

(declare-fun e!506958 () Bool)

(declare-fun e!506957 () Bool)

(declare-fun mapRes!29653 () Bool)

(assert (=> b!904657 (= e!506958 (and e!506957 mapRes!29653))))

(declare-fun condMapEmpty!29653 () Bool)

(declare-fun mapDefault!29653 () ValueCell!8832)

(assert (=> b!904657 (= condMapEmpty!29653 (= (arr!25597 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8832)) mapDefault!29653)))))

(declare-fun b!904658 () Bool)

(declare-fun tp_is_empty!18627 () Bool)

(assert (=> b!904658 (= e!506957 tp_is_empty!18627)))

(declare-fun mapIsEmpty!29653 () Bool)

(assert (=> mapIsEmpty!29653 mapRes!29653))

(declare-fun b!904659 () Bool)

(declare-fun res!610537 () Bool)

(assert (=> b!904659 (=> (not res!610537) (not e!506960))))

(declare-datatypes ((List!18063 0))(
  ( (Nil!18060) (Cons!18059 (h!19205 (_ BitVec 64)) (t!25454 List!18063)) )
))
(declare-fun arrayNoDuplicates!0 (array!53286 (_ BitVec 32) List!18063) Bool)

(assert (=> b!904659 (= res!610537 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18060))))

(declare-fun res!610540 () Bool)

(assert (=> start!77652 (=> (not res!610540) (not e!506960))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77652 (= res!610540 (validMask!0 mask!1756))))

(assert (=> start!77652 e!506960))

(declare-fun array_inv!20034 (array!53284) Bool)

(assert (=> start!77652 (and (array_inv!20034 _values!1152) e!506958)))

(assert (=> start!77652 tp!56890))

(assert (=> start!77652 true))

(assert (=> start!77652 tp_is_empty!18627))

(declare-fun array_inv!20035 (array!53286) Bool)

(assert (=> start!77652 (array_inv!20035 _keys!1386)))

(declare-fun b!904660 () Bool)

(declare-fun e!506959 () Bool)

(assert (=> b!904660 (= e!506960 (not e!506959))))

(declare-fun res!610541 () Bool)

(assert (=> b!904660 (=> res!610541 e!506959)))

(assert (=> b!904660 (= res!610541 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26058 _keys!1386))))))

(declare-fun arrayContainsKey!0 (array!53286 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!904660 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-fun defaultEntry!1160 () Int)

(declare-datatypes ((Unit!30661 0))(
  ( (Unit!30662) )
))
(declare-fun lt!408270 () Unit!30661)

(declare-fun zeroValue!1094 () V!29801)

(declare-fun minValue!1094 () V!29801)

(declare-fun lemmaKeyInListMapIsInArray!193 (array!53286 array!53284 (_ BitVec 32) (_ BitVec 32) V!29801 V!29801 (_ BitVec 64) Int) Unit!30661)

(assert (=> b!904660 (= lt!408270 (lemmaKeyInListMapIsInArray!193 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun b!904661 () Bool)

(declare-fun res!610538 () Bool)

(assert (=> b!904661 (=> (not res!610538) (not e!506960))))

(assert (=> b!904661 (= res!610538 (and (= (select (arr!25598 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!904662 () Bool)

(assert (=> b!904662 (= e!506959 e!506956)))

(declare-fun res!610544 () Bool)

(assert (=> b!904662 (=> res!610544 e!506956)))

(declare-fun contains!4480 (ListLongMap!10903 (_ BitVec 64)) Bool)

(assert (=> b!904662 (= res!610544 (not (contains!4480 lt!408272 k0!1033)))))

(declare-fun getCurrentListMap!2704 (array!53286 array!53284 (_ BitVec 32) (_ BitVec 32) V!29801 V!29801 (_ BitVec 32) Int) ListLongMap!10903)

(assert (=> b!904662 (= lt!408272 (getCurrentListMap!2704 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!904663 () Bool)

(declare-fun res!610539 () Bool)

(assert (=> b!904663 (=> (not res!610539) (not e!506960))))

(assert (=> b!904663 (= res!610539 (contains!4480 (getCurrentListMap!2704 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun mapNonEmpty!29653 () Bool)

(declare-fun tp!56889 () Bool)

(declare-fun e!506955 () Bool)

(assert (=> mapNonEmpty!29653 (= mapRes!29653 (and tp!56889 e!506955))))

(declare-fun mapValue!29653 () ValueCell!8832)

(declare-fun mapKey!29653 () (_ BitVec 32))

(declare-fun mapRest!29653 () (Array (_ BitVec 32) ValueCell!8832))

(assert (=> mapNonEmpty!29653 (= (arr!25597 _values!1152) (store mapRest!29653 mapKey!29653 mapValue!29653))))

(declare-fun b!904664 () Bool)

(assert (=> b!904664 (= e!506955 tp_is_empty!18627)))

(assert (= (and start!77652 res!610540) b!904654))

(assert (= (and b!904654 res!610543) b!904656))

(assert (= (and b!904656 res!610545) b!904659))

(assert (= (and b!904659 res!610537) b!904663))

(assert (= (and b!904663 res!610539) b!904655))

(assert (= (and b!904655 res!610542) b!904661))

(assert (= (and b!904661 res!610538) b!904660))

(assert (= (and b!904660 (not res!610541)) b!904662))

(assert (= (and b!904662 (not res!610544)) b!904653))

(assert (= (and b!904657 condMapEmpty!29653) mapIsEmpty!29653))

(assert (= (and b!904657 (not condMapEmpty!29653)) mapNonEmpty!29653))

(get-info :version)

(assert (= (and mapNonEmpty!29653 ((_ is ValueCellFull!8832) mapValue!29653)) b!904664))

(assert (= (and b!904657 ((_ is ValueCellFull!8832) mapDefault!29653)) b!904658))

(assert (= start!77652 b!904657))

(declare-fun m!840191 () Bool)

(assert (=> b!904663 m!840191))

(assert (=> b!904663 m!840191))

(declare-fun m!840193 () Bool)

(assert (=> b!904663 m!840193))

(declare-fun m!840195 () Bool)

(assert (=> b!904653 m!840195))

(declare-fun m!840197 () Bool)

(assert (=> start!77652 m!840197))

(declare-fun m!840199 () Bool)

(assert (=> start!77652 m!840199))

(declare-fun m!840201 () Bool)

(assert (=> start!77652 m!840201))

(declare-fun m!840203 () Bool)

(assert (=> b!904656 m!840203))

(declare-fun m!840205 () Bool)

(assert (=> mapNonEmpty!29653 m!840205))

(declare-fun m!840207 () Bool)

(assert (=> b!904655 m!840207))

(declare-fun m!840209 () Bool)

(assert (=> b!904660 m!840209))

(declare-fun m!840211 () Bool)

(assert (=> b!904660 m!840211))

(declare-fun m!840213 () Bool)

(assert (=> b!904659 m!840213))

(declare-fun m!840215 () Bool)

(assert (=> b!904661 m!840215))

(declare-fun m!840217 () Bool)

(assert (=> b!904662 m!840217))

(declare-fun m!840219 () Bool)

(assert (=> b!904662 m!840219))

(check-sat (not b!904659) tp_is_empty!18627 (not b!904656) (not b_next!16209) (not mapNonEmpty!29653) b_and!26593 (not b!904653) (not start!77652) (not b!904655) (not b!904662) (not b!904663) (not b!904660))
(check-sat b_and!26593 (not b_next!16209))
