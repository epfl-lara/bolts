; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43388 () Bool)

(assert start!43388)

(declare-fun b_free!12207 () Bool)

(declare-fun b_next!12207 () Bool)

(assert (=> start!43388 (= b_free!12207 (not b_next!12207))))

(declare-fun tp!42897 () Bool)

(declare-fun b_and!20981 () Bool)

(assert (=> start!43388 (= tp!42897 b_and!20981)))

(declare-fun mapIsEmpty!22282 () Bool)

(declare-fun mapRes!22282 () Bool)

(assert (=> mapIsEmpty!22282 mapRes!22282))

(declare-fun b!480432 () Bool)

(declare-fun e!282689 () Bool)

(assert (=> b!480432 (= e!282689 (not true))))

(declare-fun lt!218146 () (_ BitVec 32))

(declare-datatypes ((array!31073 0))(
  ( (array!31074 (arr!14938 (Array (_ BitVec 32) (_ BitVec 64))) (size!15296 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31073)

(declare-fun k0!1332 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!31073 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!480432 (= lt!218146 (arrayScanForKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(declare-fun e!282690 () Bool)

(assert (=> b!480432 e!282690))

(declare-fun c!57721 () Bool)

(assert (=> b!480432 (= c!57721 (and (not (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((V!19363 0))(
  ( (V!19364 (val!6907 Int)) )
))
(declare-fun minValue!1458 () V!19363)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun zeroValue!1458 () V!19363)

(declare-datatypes ((ValueCell!6498 0))(
  ( (ValueCellFull!6498 (v!9194 V!19363)) (EmptyCell!6498) )
))
(declare-datatypes ((array!31075 0))(
  ( (array!31076 (arr!14939 (Array (_ BitVec 32) ValueCell!6498)) (size!15297 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31075)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((Unit!14066 0))(
  ( (Unit!14067) )
))
(declare-fun lt!218147 () Unit!14066)

(declare-fun lemmaKeyInListMapIsInArray!124 (array!31073 array!31075 (_ BitVec 32) (_ BitVec 32) V!19363 V!19363 (_ BitVec 64) Int) Unit!14066)

(assert (=> b!480432 (= lt!218147 (lemmaKeyInListMapIsInArray!124 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k0!1332 defaultEntry!1519))))

(declare-fun b!480433 () Bool)

(assert (=> b!480433 (= e!282690 (ite (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!480434 () Bool)

(declare-fun res!286575 () Bool)

(assert (=> b!480434 (=> (not res!286575) (not e!282689))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!480434 (= res!286575 (validKeyInArray!0 k0!1332))))

(declare-fun res!286577 () Bool)

(assert (=> start!43388 (=> (not res!286577) (not e!282689))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43388 (= res!286577 (validMask!0 mask!2352))))

(assert (=> start!43388 e!282689))

(assert (=> start!43388 true))

(declare-fun tp_is_empty!13719 () Bool)

(assert (=> start!43388 tp_is_empty!13719))

(declare-fun e!282691 () Bool)

(declare-fun array_inv!10762 (array!31075) Bool)

(assert (=> start!43388 (and (array_inv!10762 _values!1516) e!282691)))

(assert (=> start!43388 tp!42897))

(declare-fun array_inv!10763 (array!31073) Bool)

(assert (=> start!43388 (array_inv!10763 _keys!1874)))

(declare-fun b!480435 () Bool)

(declare-fun res!286578 () Bool)

(assert (=> b!480435 (=> (not res!286578) (not e!282689))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31073 (_ BitVec 32)) Bool)

(assert (=> b!480435 (= res!286578 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!480436 () Bool)

(declare-fun e!282692 () Bool)

(assert (=> b!480436 (= e!282691 (and e!282692 mapRes!22282))))

(declare-fun condMapEmpty!22282 () Bool)

(declare-fun mapDefault!22282 () ValueCell!6498)

(assert (=> b!480436 (= condMapEmpty!22282 (= (arr!14939 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6498)) mapDefault!22282)))))

(declare-fun b!480437 () Bool)

(declare-fun res!286576 () Bool)

(assert (=> b!480437 (=> (not res!286576) (not e!282689))))

(assert (=> b!480437 (= res!286576 (and (= (size!15297 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15296 _keys!1874) (size!15297 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!480438 () Bool)

(declare-fun arrayContainsKey!0 (array!31073 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!480438 (= e!282690 (arrayContainsKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(declare-fun b!480439 () Bool)

(assert (=> b!480439 (= e!282692 tp_is_empty!13719)))

(declare-fun mapNonEmpty!22282 () Bool)

(declare-fun tp!42898 () Bool)

(declare-fun e!282694 () Bool)

(assert (=> mapNonEmpty!22282 (= mapRes!22282 (and tp!42898 e!282694))))

(declare-fun mapRest!22282 () (Array (_ BitVec 32) ValueCell!6498))

(declare-fun mapValue!22282 () ValueCell!6498)

(declare-fun mapKey!22282 () (_ BitVec 32))

(assert (=> mapNonEmpty!22282 (= (arr!14939 _values!1516) (store mapRest!22282 mapKey!22282 mapValue!22282))))

(declare-fun b!480440 () Bool)

(declare-fun res!286573 () Bool)

(assert (=> b!480440 (=> (not res!286573) (not e!282689))))

(declare-datatypes ((List!9175 0))(
  ( (Nil!9172) (Cons!9171 (h!10027 (_ BitVec 64)) (t!15393 List!9175)) )
))
(declare-fun arrayNoDuplicates!0 (array!31073 (_ BitVec 32) List!9175) Bool)

(assert (=> b!480440 (= res!286573 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9172))))

(declare-fun b!480441 () Bool)

(assert (=> b!480441 (= e!282694 tp_is_empty!13719)))

(declare-fun b!480442 () Bool)

(declare-fun res!286574 () Bool)

(assert (=> b!480442 (=> (not res!286574) (not e!282689))))

(declare-datatypes ((tuple2!9060 0))(
  ( (tuple2!9061 (_1!4540 (_ BitVec 64)) (_2!4540 V!19363)) )
))
(declare-datatypes ((List!9176 0))(
  ( (Nil!9173) (Cons!9172 (h!10028 tuple2!9060) (t!15394 List!9176)) )
))
(declare-datatypes ((ListLongMap!7987 0))(
  ( (ListLongMap!7988 (toList!4009 List!9176)) )
))
(declare-fun contains!2618 (ListLongMap!7987 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2301 (array!31073 array!31075 (_ BitVec 32) (_ BitVec 32) V!19363 V!19363 (_ BitVec 32) Int) ListLongMap!7987)

(assert (=> b!480442 (= res!286574 (contains!2618 (getCurrentListMap!2301 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332))))

(assert (= (and start!43388 res!286577) b!480437))

(assert (= (and b!480437 res!286576) b!480435))

(assert (= (and b!480435 res!286578) b!480440))

(assert (= (and b!480440 res!286573) b!480442))

(assert (= (and b!480442 res!286574) b!480434))

(assert (= (and b!480434 res!286575) b!480432))

(assert (= (and b!480432 c!57721) b!480438))

(assert (= (and b!480432 (not c!57721)) b!480433))

(assert (= (and b!480436 condMapEmpty!22282) mapIsEmpty!22282))

(assert (= (and b!480436 (not condMapEmpty!22282)) mapNonEmpty!22282))

(get-info :version)

(assert (= (and mapNonEmpty!22282 ((_ is ValueCellFull!6498) mapValue!22282)) b!480441))

(assert (= (and b!480436 ((_ is ValueCellFull!6498) mapDefault!22282)) b!480439))

(assert (= start!43388 b!480436))

(declare-fun m!462067 () Bool)

(assert (=> b!480442 m!462067))

(assert (=> b!480442 m!462067))

(declare-fun m!462069 () Bool)

(assert (=> b!480442 m!462069))

(declare-fun m!462071 () Bool)

(assert (=> b!480438 m!462071))

(declare-fun m!462073 () Bool)

(assert (=> mapNonEmpty!22282 m!462073))

(declare-fun m!462075 () Bool)

(assert (=> start!43388 m!462075))

(declare-fun m!462077 () Bool)

(assert (=> start!43388 m!462077))

(declare-fun m!462079 () Bool)

(assert (=> start!43388 m!462079))

(declare-fun m!462081 () Bool)

(assert (=> b!480432 m!462081))

(declare-fun m!462083 () Bool)

(assert (=> b!480432 m!462083))

(declare-fun m!462085 () Bool)

(assert (=> b!480440 m!462085))

(declare-fun m!462087 () Bool)

(assert (=> b!480435 m!462087))

(declare-fun m!462089 () Bool)

(assert (=> b!480434 m!462089))

(check-sat (not start!43388) (not b!480434) (not mapNonEmpty!22282) b_and!20981 (not b!480435) (not b!480442) (not b_next!12207) (not b!480438) tp_is_empty!13719 (not b!480440) (not b!480432))
(check-sat b_and!20981 (not b_next!12207))
