; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43370 () Bool)

(assert start!43370)

(declare-fun b_free!12189 () Bool)

(declare-fun b_next!12189 () Bool)

(assert (=> start!43370 (= b_free!12189 (not b_next!12189))))

(declare-fun tp!42843 () Bool)

(declare-fun b_and!20963 () Bool)

(assert (=> start!43370 (= tp!42843 b_and!20963)))

(declare-fun mapNonEmpty!22255 () Bool)

(declare-fun mapRes!22255 () Bool)

(declare-fun tp!42844 () Bool)

(declare-fun e!282528 () Bool)

(assert (=> mapNonEmpty!22255 (= mapRes!22255 (and tp!42844 e!282528))))

(declare-fun mapKey!22255 () (_ BitVec 32))

(declare-datatypes ((V!19339 0))(
  ( (V!19340 (val!6898 Int)) )
))
(declare-datatypes ((ValueCell!6489 0))(
  ( (ValueCellFull!6489 (v!9185 V!19339)) (EmptyCell!6489) )
))
(declare-fun mapValue!22255 () ValueCell!6489)

(declare-fun mapRest!22255 () (Array (_ BitVec 32) ValueCell!6489))

(declare-datatypes ((array!31039 0))(
  ( (array!31040 (arr!14921 (Array (_ BitVec 32) ValueCell!6489)) (size!15279 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31039)

(assert (=> mapNonEmpty!22255 (= (arr!14921 _values!1516) (store mapRest!22255 mapKey!22255 mapValue!22255))))

(declare-fun b!480135 () Bool)

(declare-fun res!286412 () Bool)

(declare-fun e!282531 () Bool)

(assert (=> b!480135 (=> (not res!286412) (not e!282531))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((array!31041 0))(
  ( (array!31042 (arr!14922 (Array (_ BitVec 32) (_ BitVec 64))) (size!15280 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31041)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!480135 (= res!286412 (and (= (size!15279 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15280 _keys!1874) (size!15279 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun res!286411 () Bool)

(assert (=> start!43370 (=> (not res!286411) (not e!282531))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43370 (= res!286411 (validMask!0 mask!2352))))

(assert (=> start!43370 e!282531))

(assert (=> start!43370 true))

(declare-fun tp_is_empty!13701 () Bool)

(assert (=> start!43370 tp_is_empty!13701))

(declare-fun e!282527 () Bool)

(declare-fun array_inv!10750 (array!31039) Bool)

(assert (=> start!43370 (and (array_inv!10750 _values!1516) e!282527)))

(assert (=> start!43370 tp!42843))

(declare-fun array_inv!10751 (array!31041) Bool)

(assert (=> start!43370 (array_inv!10751 _keys!1874)))

(declare-fun b!480136 () Bool)

(declare-fun res!286416 () Bool)

(assert (=> b!480136 (=> (not res!286416) (not e!282531))))

(declare-fun k0!1332 () (_ BitVec 64))

(declare-fun minValue!1458 () V!19339)

(declare-fun zeroValue!1458 () V!19339)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((tuple2!9048 0))(
  ( (tuple2!9049 (_1!4534 (_ BitVec 64)) (_2!4534 V!19339)) )
))
(declare-datatypes ((List!9163 0))(
  ( (Nil!9160) (Cons!9159 (h!10015 tuple2!9048) (t!15381 List!9163)) )
))
(declare-datatypes ((ListLongMap!7975 0))(
  ( (ListLongMap!7976 (toList!4003 List!9163)) )
))
(declare-fun contains!2612 (ListLongMap!7975 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2295 (array!31041 array!31039 (_ BitVec 32) (_ BitVec 32) V!19339 V!19339 (_ BitVec 32) Int) ListLongMap!7975)

(assert (=> b!480136 (= res!286416 (contains!2612 (getCurrentListMap!2295 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332))))

(declare-fun b!480137 () Bool)

(declare-fun res!286415 () Bool)

(assert (=> b!480137 (=> (not res!286415) (not e!282531))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31041 (_ BitVec 32)) Bool)

(assert (=> b!480137 (= res!286415 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!480138 () Bool)

(assert (=> b!480138 (= e!282528 tp_is_empty!13701)))

(declare-fun b!480139 () Bool)

(assert (=> b!480139 (= e!282531 (not true))))

(declare-fun lt!218092 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!31041 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!480139 (= lt!218092 (arrayScanForKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(declare-fun e!282530 () Bool)

(assert (=> b!480139 e!282530))

(declare-fun c!57694 () Bool)

(assert (=> b!480139 (= c!57694 (and (not (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!14054 0))(
  ( (Unit!14055) )
))
(declare-fun lt!218093 () Unit!14054)

(declare-fun lemmaKeyInListMapIsInArray!118 (array!31041 array!31039 (_ BitVec 32) (_ BitVec 32) V!19339 V!19339 (_ BitVec 64) Int) Unit!14054)

(assert (=> b!480139 (= lt!218093 (lemmaKeyInListMapIsInArray!118 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k0!1332 defaultEntry!1519))))

(declare-fun b!480140 () Bool)

(assert (=> b!480140 (= e!282530 (ite (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!480141 () Bool)

(declare-fun res!286414 () Bool)

(assert (=> b!480141 (=> (not res!286414) (not e!282531))))

(declare-datatypes ((List!9164 0))(
  ( (Nil!9161) (Cons!9160 (h!10016 (_ BitVec 64)) (t!15382 List!9164)) )
))
(declare-fun arrayNoDuplicates!0 (array!31041 (_ BitVec 32) List!9164) Bool)

(assert (=> b!480141 (= res!286414 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9161))))

(declare-fun b!480142 () Bool)

(declare-fun res!286413 () Bool)

(assert (=> b!480142 (=> (not res!286413) (not e!282531))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!480142 (= res!286413 (validKeyInArray!0 k0!1332))))

(declare-fun b!480143 () Bool)

(declare-fun arrayContainsKey!0 (array!31041 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!480143 (= e!282530 (arrayContainsKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(declare-fun b!480144 () Bool)

(declare-fun e!282532 () Bool)

(assert (=> b!480144 (= e!282532 tp_is_empty!13701)))

(declare-fun b!480145 () Bool)

(assert (=> b!480145 (= e!282527 (and e!282532 mapRes!22255))))

(declare-fun condMapEmpty!22255 () Bool)

(declare-fun mapDefault!22255 () ValueCell!6489)

(assert (=> b!480145 (= condMapEmpty!22255 (= (arr!14921 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6489)) mapDefault!22255)))))

(declare-fun mapIsEmpty!22255 () Bool)

(assert (=> mapIsEmpty!22255 mapRes!22255))

(assert (= (and start!43370 res!286411) b!480135))

(assert (= (and b!480135 res!286412) b!480137))

(assert (= (and b!480137 res!286415) b!480141))

(assert (= (and b!480141 res!286414) b!480136))

(assert (= (and b!480136 res!286416) b!480142))

(assert (= (and b!480142 res!286413) b!480139))

(assert (= (and b!480139 c!57694) b!480143))

(assert (= (and b!480139 (not c!57694)) b!480140))

(assert (= (and b!480145 condMapEmpty!22255) mapIsEmpty!22255))

(assert (= (and b!480145 (not condMapEmpty!22255)) mapNonEmpty!22255))

(get-info :version)

(assert (= (and mapNonEmpty!22255 ((_ is ValueCellFull!6489) mapValue!22255)) b!480138))

(assert (= (and b!480145 ((_ is ValueCellFull!6489) mapDefault!22255)) b!480144))

(assert (= start!43370 b!480145))

(declare-fun m!461851 () Bool)

(assert (=> b!480141 m!461851))

(declare-fun m!461853 () Bool)

(assert (=> b!480143 m!461853))

(declare-fun m!461855 () Bool)

(assert (=> b!480136 m!461855))

(assert (=> b!480136 m!461855))

(declare-fun m!461857 () Bool)

(assert (=> b!480136 m!461857))

(declare-fun m!461859 () Bool)

(assert (=> b!480142 m!461859))

(declare-fun m!461861 () Bool)

(assert (=> b!480139 m!461861))

(declare-fun m!461863 () Bool)

(assert (=> b!480139 m!461863))

(declare-fun m!461865 () Bool)

(assert (=> mapNonEmpty!22255 m!461865))

(declare-fun m!461867 () Bool)

(assert (=> start!43370 m!461867))

(declare-fun m!461869 () Bool)

(assert (=> start!43370 m!461869))

(declare-fun m!461871 () Bool)

(assert (=> start!43370 m!461871))

(declare-fun m!461873 () Bool)

(assert (=> b!480137 m!461873))

(check-sat (not b_next!12189) (not b!480143) (not b!480139) (not b!480142) tp_is_empty!13701 (not start!43370) (not b!480136) (not b!480137) (not mapNonEmpty!22255) (not b!480141) b_and!20963)
(check-sat b_and!20963 (not b_next!12189))
