; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43364 () Bool)

(assert start!43364)

(declare-fun b_free!12183 () Bool)

(declare-fun b_next!12183 () Bool)

(assert (=> start!43364 (= b_free!12183 (not b_next!12183))))

(declare-fun tp!42826 () Bool)

(declare-fun b_and!20957 () Bool)

(assert (=> start!43364 (= tp!42826 b_and!20957)))

(declare-fun b!480036 () Bool)

(declare-fun res!286358 () Bool)

(declare-fun e!282478 () Bool)

(assert (=> b!480036 (=> (not res!286358) (not e!282478))))

(declare-fun k0!1332 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!480036 (= res!286358 (validKeyInArray!0 k0!1332))))

(declare-fun b!480037 () Bool)

(declare-fun e!282476 () Bool)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!480037 (= e!282476 (ite (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!22246 () Bool)

(declare-fun mapRes!22246 () Bool)

(assert (=> mapIsEmpty!22246 mapRes!22246))

(declare-fun res!286360 () Bool)

(assert (=> start!43364 (=> (not res!286360) (not e!282478))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43364 (= res!286360 (validMask!0 mask!2352))))

(assert (=> start!43364 e!282478))

(assert (=> start!43364 true))

(declare-fun tp_is_empty!13695 () Bool)

(assert (=> start!43364 tp_is_empty!13695))

(declare-datatypes ((V!19331 0))(
  ( (V!19332 (val!6895 Int)) )
))
(declare-datatypes ((ValueCell!6486 0))(
  ( (ValueCellFull!6486 (v!9182 V!19331)) (EmptyCell!6486) )
))
(declare-datatypes ((array!31027 0))(
  ( (array!31028 (arr!14915 (Array (_ BitVec 32) ValueCell!6486)) (size!15273 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31027)

(declare-fun e!282477 () Bool)

(declare-fun array_inv!10746 (array!31027) Bool)

(assert (=> start!43364 (and (array_inv!10746 _values!1516) e!282477)))

(assert (=> start!43364 tp!42826))

(declare-datatypes ((array!31029 0))(
  ( (array!31030 (arr!14916 (Array (_ BitVec 32) (_ BitVec 64))) (size!15274 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31029)

(declare-fun array_inv!10747 (array!31029) Bool)

(assert (=> start!43364 (array_inv!10747 _keys!1874)))

(declare-fun b!480038 () Bool)

(declare-fun res!286361 () Bool)

(assert (=> b!480038 (=> (not res!286361) (not e!282478))))

(declare-datatypes ((List!9158 0))(
  ( (Nil!9155) (Cons!9154 (h!10010 (_ BitVec 64)) (t!15376 List!9158)) )
))
(declare-fun arrayNoDuplicates!0 (array!31029 (_ BitVec 32) List!9158) Bool)

(assert (=> b!480038 (= res!286361 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9155))))

(declare-fun mapNonEmpty!22246 () Bool)

(declare-fun tp!42825 () Bool)

(declare-fun e!282474 () Bool)

(assert (=> mapNonEmpty!22246 (= mapRes!22246 (and tp!42825 e!282474))))

(declare-fun mapValue!22246 () ValueCell!6486)

(declare-fun mapRest!22246 () (Array (_ BitVec 32) ValueCell!6486))

(declare-fun mapKey!22246 () (_ BitVec 32))

(assert (=> mapNonEmpty!22246 (= (arr!14915 _values!1516) (store mapRest!22246 mapKey!22246 mapValue!22246))))

(declare-fun b!480039 () Bool)

(declare-fun e!282475 () Bool)

(assert (=> b!480039 (= e!282477 (and e!282475 mapRes!22246))))

(declare-fun condMapEmpty!22246 () Bool)

(declare-fun mapDefault!22246 () ValueCell!6486)

(assert (=> b!480039 (= condMapEmpty!22246 (= (arr!14915 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6486)) mapDefault!22246)))))

(declare-fun b!480040 () Bool)

(declare-fun res!286359 () Bool)

(assert (=> b!480040 (=> (not res!286359) (not e!282478))))

(declare-fun minValue!1458 () V!19331)

(declare-fun zeroValue!1458 () V!19331)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((tuple2!9044 0))(
  ( (tuple2!9045 (_1!4532 (_ BitVec 64)) (_2!4532 V!19331)) )
))
(declare-datatypes ((List!9159 0))(
  ( (Nil!9156) (Cons!9155 (h!10011 tuple2!9044) (t!15377 List!9159)) )
))
(declare-datatypes ((ListLongMap!7971 0))(
  ( (ListLongMap!7972 (toList!4001 List!9159)) )
))
(declare-fun contains!2610 (ListLongMap!7971 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2293 (array!31029 array!31027 (_ BitVec 32) (_ BitVec 32) V!19331 V!19331 (_ BitVec 32) Int) ListLongMap!7971)

(assert (=> b!480040 (= res!286359 (contains!2610 (getCurrentListMap!2293 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332))))

(declare-fun b!480041 () Bool)

(declare-fun res!286362 () Bool)

(assert (=> b!480041 (=> (not res!286362) (not e!282478))))

(assert (=> b!480041 (= res!286362 (and (= (size!15273 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15274 _keys!1874) (size!15273 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!480042 () Bool)

(assert (=> b!480042 (= e!282475 tp_is_empty!13695)))

(declare-fun b!480043 () Bool)

(assert (=> b!480043 (= e!282474 tp_is_empty!13695)))

(declare-fun b!480044 () Bool)

(assert (=> b!480044 (= e!282478 (not true))))

(declare-fun lt!218074 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!31029 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!480044 (= lt!218074 (arrayScanForKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(assert (=> b!480044 e!282476))

(declare-fun c!57685 () Bool)

(assert (=> b!480044 (= c!57685 (and (not (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!14050 0))(
  ( (Unit!14051) )
))
(declare-fun lt!218075 () Unit!14050)

(declare-fun lemmaKeyInListMapIsInArray!116 (array!31029 array!31027 (_ BitVec 32) (_ BitVec 32) V!19331 V!19331 (_ BitVec 64) Int) Unit!14050)

(assert (=> b!480044 (= lt!218075 (lemmaKeyInListMapIsInArray!116 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k0!1332 defaultEntry!1519))))

(declare-fun b!480045 () Bool)

(declare-fun res!286357 () Bool)

(assert (=> b!480045 (=> (not res!286357) (not e!282478))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31029 (_ BitVec 32)) Bool)

(assert (=> b!480045 (= res!286357 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!480046 () Bool)

(declare-fun arrayContainsKey!0 (array!31029 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!480046 (= e!282476 (arrayContainsKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(assert (= (and start!43364 res!286360) b!480041))

(assert (= (and b!480041 res!286362) b!480045))

(assert (= (and b!480045 res!286357) b!480038))

(assert (= (and b!480038 res!286361) b!480040))

(assert (= (and b!480040 res!286359) b!480036))

(assert (= (and b!480036 res!286358) b!480044))

(assert (= (and b!480044 c!57685) b!480046))

(assert (= (and b!480044 (not c!57685)) b!480037))

(assert (= (and b!480039 condMapEmpty!22246) mapIsEmpty!22246))

(assert (= (and b!480039 (not condMapEmpty!22246)) mapNonEmpty!22246))

(get-info :version)

(assert (= (and mapNonEmpty!22246 ((_ is ValueCellFull!6486) mapValue!22246)) b!480043))

(assert (= (and b!480039 ((_ is ValueCellFull!6486) mapDefault!22246)) b!480042))

(assert (= start!43364 b!480039))

(declare-fun m!461779 () Bool)

(assert (=> b!480045 m!461779))

(declare-fun m!461781 () Bool)

(assert (=> b!480038 m!461781))

(declare-fun m!461783 () Bool)

(assert (=> b!480046 m!461783))

(declare-fun m!461785 () Bool)

(assert (=> b!480040 m!461785))

(assert (=> b!480040 m!461785))

(declare-fun m!461787 () Bool)

(assert (=> b!480040 m!461787))

(declare-fun m!461789 () Bool)

(assert (=> mapNonEmpty!22246 m!461789))

(declare-fun m!461791 () Bool)

(assert (=> start!43364 m!461791))

(declare-fun m!461793 () Bool)

(assert (=> start!43364 m!461793))

(declare-fun m!461795 () Bool)

(assert (=> start!43364 m!461795))

(declare-fun m!461797 () Bool)

(assert (=> b!480036 m!461797))

(declare-fun m!461799 () Bool)

(assert (=> b!480044 m!461799))

(declare-fun m!461801 () Bool)

(assert (=> b!480044 m!461801))

(check-sat (not b!480036) (not start!43364) (not b!480040) tp_is_empty!13695 (not mapNonEmpty!22246) (not b_next!12183) (not b!480038) b_and!20957 (not b!480046) (not b!480044) (not b!480045))
(check-sat b_and!20957 (not b_next!12183))
