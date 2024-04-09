; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43466 () Bool)

(assert start!43466)

(declare-fun b_free!12237 () Bool)

(declare-fun b_next!12237 () Bool)

(assert (=> start!43466 (= b_free!12237 (not b_next!12237))))

(declare-fun tp!42993 () Bool)

(declare-fun b_and!21015 () Bool)

(assert (=> start!43466 (= tp!42993 b_and!21015)))

(declare-fun b!481189 () Bool)

(declare-fun res!286951 () Bool)

(declare-fun e!283135 () Bool)

(assert (=> b!481189 (=> (not res!286951) (not e!283135))))

(declare-datatypes ((array!31137 0))(
  ( (array!31138 (arr!14968 (Array (_ BitVec 32) (_ BitVec 64))) (size!15326 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31137)

(declare-datatypes ((List!9197 0))(
  ( (Nil!9194) (Cons!9193 (h!10049 (_ BitVec 64)) (t!15419 List!9197)) )
))
(declare-fun arrayNoDuplicates!0 (array!31137 (_ BitVec 32) List!9197) Bool)

(assert (=> b!481189 (= res!286951 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9194))))

(declare-fun b!481190 () Bool)

(declare-fun res!286953 () Bool)

(assert (=> b!481190 (=> (not res!286953) (not e!283135))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-datatypes ((V!19403 0))(
  ( (V!19404 (val!6922 Int)) )
))
(declare-datatypes ((ValueCell!6513 0))(
  ( (ValueCellFull!6513 (v!9211 V!19403)) (EmptyCell!6513) )
))
(declare-datatypes ((array!31139 0))(
  ( (array!31140 (arr!14969 (Array (_ BitVec 32) ValueCell!6513)) (size!15327 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31139)

(assert (=> b!481190 (= res!286953 (and (= (size!15327 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15326 _keys!1874) (size!15327 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun res!286950 () Bool)

(assert (=> start!43466 (=> (not res!286950) (not e!283135))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43466 (= res!286950 (validMask!0 mask!2352))))

(assert (=> start!43466 e!283135))

(assert (=> start!43466 true))

(declare-fun tp_is_empty!13749 () Bool)

(assert (=> start!43466 tp_is_empty!13749))

(declare-fun e!283133 () Bool)

(declare-fun array_inv!10778 (array!31139) Bool)

(assert (=> start!43466 (and (array_inv!10778 _values!1516) e!283133)))

(assert (=> start!43466 tp!42993))

(declare-fun array_inv!10779 (array!31137) Bool)

(assert (=> start!43466 (array_inv!10779 _keys!1874)))

(declare-fun mapIsEmpty!22333 () Bool)

(declare-fun mapRes!22333 () Bool)

(assert (=> mapIsEmpty!22333 mapRes!22333))

(declare-fun mapNonEmpty!22333 () Bool)

(declare-fun tp!42994 () Bool)

(declare-fun e!283134 () Bool)

(assert (=> mapNonEmpty!22333 (= mapRes!22333 (and tp!42994 e!283134))))

(declare-fun mapKey!22333 () (_ BitVec 32))

(declare-fun mapRest!22333 () (Array (_ BitVec 32) ValueCell!6513))

(declare-fun mapValue!22333 () ValueCell!6513)

(assert (=> mapNonEmpty!22333 (= (arr!14969 _values!1516) (store mapRest!22333 mapKey!22333 mapValue!22333))))

(declare-fun b!481191 () Bool)

(declare-fun e!283138 () Bool)

(assert (=> b!481191 (= e!283138 tp_is_empty!13749)))

(declare-fun b!481192 () Bool)

(declare-fun e!283136 () Bool)

(declare-fun k0!1332 () (_ BitVec 64))

(assert (=> b!481192 (= e!283136 (ite (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!481193 () Bool)

(declare-fun arrayContainsKey!0 (array!31137 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!481193 (= e!283136 (arrayContainsKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(declare-fun b!481194 () Bool)

(assert (=> b!481194 (= e!283133 (and e!283138 mapRes!22333))))

(declare-fun condMapEmpty!22333 () Bool)

(declare-fun mapDefault!22333 () ValueCell!6513)

(assert (=> b!481194 (= condMapEmpty!22333 (= (arr!14969 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6513)) mapDefault!22333)))))

(declare-fun b!481195 () Bool)

(declare-fun res!286952 () Bool)

(assert (=> b!481195 (=> (not res!286952) (not e!283135))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!481195 (= res!286952 (validKeyInArray!0 k0!1332))))

(declare-fun b!481196 () Bool)

(assert (=> b!481196 (= e!283134 tp_is_empty!13749)))

(declare-fun b!481197 () Bool)

(declare-fun res!286954 () Bool)

(assert (=> b!481197 (=> (not res!286954) (not e!283135))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31137 (_ BitVec 32)) Bool)

(assert (=> b!481197 (= res!286954 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!481198 () Bool)

(assert (=> b!481198 (= e!283135 (not true))))

(declare-fun lt!218477 () (_ BitVec 32))

(assert (=> b!481198 (arrayForallSeekEntryOrOpenFound!0 lt!218477 _keys!1874 mask!2352)))

(declare-datatypes ((Unit!14090 0))(
  ( (Unit!14091) )
))
(declare-fun lt!218476 () Unit!14090)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31137 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14090)

(assert (=> b!481198 (= lt!218476 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1874 mask!2352 #b00000000000000000000000000000000 lt!218477))))

(declare-fun arrayScanForKey!0 (array!31137 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!481198 (= lt!218477 (arrayScanForKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(assert (=> b!481198 e!283136))

(declare-fun c!57834 () Bool)

(assert (=> b!481198 (= c!57834 (and (not (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun minValue!1458 () V!19403)

(declare-fun lt!218475 () Unit!14090)

(declare-fun zeroValue!1458 () V!19403)

(declare-fun defaultEntry!1519 () Int)

(declare-fun lemmaKeyInListMapIsInArray!134 (array!31137 array!31139 (_ BitVec 32) (_ BitVec 32) V!19403 V!19403 (_ BitVec 64) Int) Unit!14090)

(assert (=> b!481198 (= lt!218475 (lemmaKeyInListMapIsInArray!134 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k0!1332 defaultEntry!1519))))

(declare-fun b!481199 () Bool)

(declare-fun res!286949 () Bool)

(assert (=> b!481199 (=> (not res!286949) (not e!283135))))

(declare-datatypes ((tuple2!9082 0))(
  ( (tuple2!9083 (_1!4551 (_ BitVec 64)) (_2!4551 V!19403)) )
))
(declare-datatypes ((List!9198 0))(
  ( (Nil!9195) (Cons!9194 (h!10050 tuple2!9082) (t!15420 List!9198)) )
))
(declare-datatypes ((ListLongMap!8009 0))(
  ( (ListLongMap!8010 (toList!4020 List!9198)) )
))
(declare-fun contains!2631 (ListLongMap!8009 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2312 (array!31137 array!31139 (_ BitVec 32) (_ BitVec 32) V!19403 V!19403 (_ BitVec 32) Int) ListLongMap!8009)

(assert (=> b!481199 (= res!286949 (contains!2631 (getCurrentListMap!2312 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332))))

(assert (= (and start!43466 res!286950) b!481190))

(assert (= (and b!481190 res!286953) b!481197))

(assert (= (and b!481197 res!286954) b!481189))

(assert (= (and b!481189 res!286951) b!481199))

(assert (= (and b!481199 res!286949) b!481195))

(assert (= (and b!481195 res!286952) b!481198))

(assert (= (and b!481198 c!57834) b!481193))

(assert (= (and b!481198 (not c!57834)) b!481192))

(assert (= (and b!481194 condMapEmpty!22333) mapIsEmpty!22333))

(assert (= (and b!481194 (not condMapEmpty!22333)) mapNonEmpty!22333))

(get-info :version)

(assert (= (and mapNonEmpty!22333 ((_ is ValueCellFull!6513) mapValue!22333)) b!481196))

(assert (= (and b!481194 ((_ is ValueCellFull!6513) mapDefault!22333)) b!481191))

(assert (= start!43466 b!481194))

(declare-fun m!462683 () Bool)

(assert (=> b!481199 m!462683))

(assert (=> b!481199 m!462683))

(declare-fun m!462685 () Bool)

(assert (=> b!481199 m!462685))

(declare-fun m!462687 () Bool)

(assert (=> b!481197 m!462687))

(declare-fun m!462689 () Bool)

(assert (=> start!43466 m!462689))

(declare-fun m!462691 () Bool)

(assert (=> start!43466 m!462691))

(declare-fun m!462693 () Bool)

(assert (=> start!43466 m!462693))

(declare-fun m!462695 () Bool)

(assert (=> b!481189 m!462695))

(declare-fun m!462697 () Bool)

(assert (=> b!481195 m!462697))

(declare-fun m!462699 () Bool)

(assert (=> mapNonEmpty!22333 m!462699))

(declare-fun m!462701 () Bool)

(assert (=> b!481193 m!462701))

(declare-fun m!462703 () Bool)

(assert (=> b!481198 m!462703))

(declare-fun m!462705 () Bool)

(assert (=> b!481198 m!462705))

(declare-fun m!462707 () Bool)

(assert (=> b!481198 m!462707))

(declare-fun m!462709 () Bool)

(assert (=> b!481198 m!462709))

(check-sat (not b!481195) (not mapNonEmpty!22333) (not b!481189) (not b!481197) tp_is_empty!13749 (not b!481199) (not b!481193) (not b!481198) (not b_next!12237) (not start!43466) b_and!21015)
(check-sat b_and!21015 (not b_next!12237))
