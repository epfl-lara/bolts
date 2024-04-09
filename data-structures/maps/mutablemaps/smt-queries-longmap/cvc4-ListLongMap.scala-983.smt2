; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21232 () Bool)

(assert start!21232)

(declare-fun b_free!5651 () Bool)

(declare-fun b_next!5651 () Bool)

(assert (=> start!21232 (= b_free!5651 (not b_next!5651))))

(declare-fun tp!20027 () Bool)

(declare-fun b_and!12547 () Bool)

(assert (=> start!21232 (= tp!20027 b_and!12547)))

(declare-fun b!213788 () Bool)

(declare-fun res!104704 () Bool)

(declare-fun e!139021 () Bool)

(assert (=> b!213788 (=> (not res!104704) (not e!139021))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!213788 (= res!104704 (validKeyInArray!0 k!843))))

(declare-fun b!213789 () Bool)

(declare-fun e!139018 () Bool)

(declare-fun tp_is_empty!5513 () Bool)

(assert (=> b!213789 (= e!139018 tp_is_empty!5513)))

(declare-fun b!213790 () Bool)

(declare-fun res!104700 () Bool)

(assert (=> b!213790 (=> (not res!104700) (not e!139021))))

(declare-datatypes ((array!10228 0))(
  ( (array!10229 (arr!4853 (Array (_ BitVec 32) (_ BitVec 64))) (size!5178 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10228)

(declare-datatypes ((List!3144 0))(
  ( (Nil!3141) (Cons!3140 (h!3782 (_ BitVec 64)) (t!8105 List!3144)) )
))
(declare-fun arrayNoDuplicates!0 (array!10228 (_ BitVec 32) List!3144) Bool)

(assert (=> b!213790 (= res!104700 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3141))))

(declare-fun b!213791 () Bool)

(declare-fun res!104699 () Bool)

(assert (=> b!213791 (=> (not res!104699) (not e!139021))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10228 (_ BitVec 32)) Bool)

(assert (=> b!213791 (= res!104699 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!213792 () Bool)

(declare-fun e!139019 () Bool)

(assert (=> b!213792 (= e!139019 tp_is_empty!5513)))

(declare-fun b!213793 () Bool)

(declare-fun res!104701 () Bool)

(assert (=> b!213793 (=> (not res!104701) (not e!139021))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6997 0))(
  ( (V!6998 (val!2801 Int)) )
))
(declare-datatypes ((ValueCell!2413 0))(
  ( (ValueCellFull!2413 (v!4811 V!6997)) (EmptyCell!2413) )
))
(declare-datatypes ((array!10230 0))(
  ( (array!10231 (arr!4854 (Array (_ BitVec 32) ValueCell!2413)) (size!5179 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10230)

(assert (=> b!213793 (= res!104701 (and (= (size!5179 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5178 _keys!825) (size!5179 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!213794 () Bool)

(declare-fun res!104703 () Bool)

(assert (=> b!213794 (=> (not res!104703) (not e!139021))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!213794 (= res!104703 (= (select (arr!4853 _keys!825) i!601) k!843))))

(declare-fun mapNonEmpty!9371 () Bool)

(declare-fun mapRes!9371 () Bool)

(declare-fun tp!20026 () Bool)

(assert (=> mapNonEmpty!9371 (= mapRes!9371 (and tp!20026 e!139019))))

(declare-fun mapValue!9371 () ValueCell!2413)

(declare-fun mapRest!9371 () (Array (_ BitVec 32) ValueCell!2413))

(declare-fun mapKey!9371 () (_ BitVec 32))

(assert (=> mapNonEmpty!9371 (= (arr!4854 _values!649) (store mapRest!9371 mapKey!9371 mapValue!9371))))

(declare-fun b!213795 () Bool)

(declare-fun e!139016 () Bool)

(assert (=> b!213795 (= e!139021 (not e!139016))))

(declare-fun res!104698 () Bool)

(assert (=> b!213795 (=> res!104698 e!139016)))

(declare-fun lt!110644 () Bool)

(declare-datatypes ((tuple2!4236 0))(
  ( (tuple2!4237 (_1!2128 (_ BitVec 64)) (_2!2128 V!6997)) )
))
(declare-datatypes ((List!3145 0))(
  ( (Nil!3142) (Cons!3141 (h!3783 tuple2!4236) (t!8106 List!3145)) )
))
(declare-datatypes ((ListLongMap!3163 0))(
  ( (ListLongMap!3164 (toList!1597 List!3145)) )
))
(declare-fun lt!110641 () ListLongMap!3163)

(declare-fun lt!110640 () ListLongMap!3163)

(assert (=> b!213795 (= res!104698 (or (and (not lt!110644) (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!110644) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!110644) (not (= lt!110641 lt!110640))))))

(assert (=> b!213795 (= lt!110644 (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun zeroValue!615 () V!6997)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6997)

(declare-fun lt!110643 () ListLongMap!3163)

(declare-fun getCurrentListMap!1120 (array!10228 array!10230 (_ BitVec 32) (_ BitVec 32) V!6997 V!6997 (_ BitVec 32) Int) ListLongMap!3163)

(assert (=> b!213795 (= lt!110643 (getCurrentListMap!1120 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!110639 () array!10230)

(assert (=> b!213795 (= lt!110641 (getCurrentListMap!1120 _keys!825 lt!110639 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!110638 () ListLongMap!3163)

(assert (=> b!213795 (and (= lt!110640 lt!110638) (= lt!110638 lt!110640))))

(declare-fun lt!110636 () ListLongMap!3163)

(declare-fun lt!110642 () tuple2!4236)

(declare-fun +!590 (ListLongMap!3163 tuple2!4236) ListLongMap!3163)

(assert (=> b!213795 (= lt!110638 (+!590 lt!110636 lt!110642))))

(declare-fun v!520 () V!6997)

(assert (=> b!213795 (= lt!110642 (tuple2!4237 k!843 v!520))))

(declare-datatypes ((Unit!6481 0))(
  ( (Unit!6482) )
))
(declare-fun lt!110637 () Unit!6481)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!237 (array!10228 array!10230 (_ BitVec 32) (_ BitVec 32) V!6997 V!6997 (_ BitVec 32) (_ BitVec 64) V!6997 (_ BitVec 32) Int) Unit!6481)

(assert (=> b!213795 (= lt!110637 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!237 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!519 (array!10228 array!10230 (_ BitVec 32) (_ BitVec 32) V!6997 V!6997 (_ BitVec 32) Int) ListLongMap!3163)

(assert (=> b!213795 (= lt!110640 (getCurrentListMapNoExtraKeys!519 _keys!825 lt!110639 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!213795 (= lt!110639 (array!10231 (store (arr!4854 _values!649) i!601 (ValueCellFull!2413 v!520)) (size!5179 _values!649)))))

(assert (=> b!213795 (= lt!110636 (getCurrentListMapNoExtraKeys!519 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!213796 () Bool)

(assert (=> b!213796 (= e!139016 (= (+!590 lt!110643 lt!110642) lt!110641))))

(declare-fun b!213797 () Bool)

(declare-fun e!139017 () Bool)

(assert (=> b!213797 (= e!139017 (and e!139018 mapRes!9371))))

(declare-fun condMapEmpty!9371 () Bool)

(declare-fun mapDefault!9371 () ValueCell!2413)

