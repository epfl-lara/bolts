; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38574 () Bool)

(assert start!38574)

(declare-fun b_free!9103 () Bool)

(declare-fun b_next!9103 () Bool)

(assert (=> start!38574 (= b_free!9103 (not b_next!9103))))

(declare-fun tp!32433 () Bool)

(declare-fun b_and!16507 () Bool)

(assert (=> start!38574 (= tp!32433 b_and!16507)))

(declare-fun b!398890 () Bool)

(declare-fun e!240977 () Bool)

(assert (=> b!398890 (= e!240977 (not true))))

(declare-fun e!240976 () Bool)

(assert (=> b!398890 e!240976))

(declare-fun c!54536 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!398890 (= c!54536 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((V!14419 0))(
  ( (V!14420 (val!5037 Int)) )
))
(declare-fun minValue!515 () V!14419)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4649 0))(
  ( (ValueCellFull!4649 (v!7280 V!14419)) (EmptyCell!4649) )
))
(declare-datatypes ((array!23849 0))(
  ( (array!23850 (arr!11371 (Array (_ BitVec 32) ValueCell!4649)) (size!11723 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23849)

(declare-fun zeroValue!515 () V!14419)

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((Unit!12049 0))(
  ( (Unit!12050) )
))
(declare-fun lt!187497 () Unit!12049)

(declare-fun v!412 () V!14419)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!23851 0))(
  ( (array!23852 (arr!11372 (Array (_ BitVec 32) (_ BitVec 64))) (size!11724 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23851)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!287 (array!23851 array!23849 (_ BitVec 32) (_ BitVec 32) V!14419 V!14419 (_ BitVec 32) (_ BitVec 64) V!14419 (_ BitVec 32) Int) Unit!12049)

(assert (=> b!398890 (= lt!187497 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!287 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!398891 () Bool)

(declare-datatypes ((tuple2!6598 0))(
  ( (tuple2!6599 (_1!3309 (_ BitVec 64)) (_2!3309 V!14419)) )
))
(declare-datatypes ((List!6554 0))(
  ( (Nil!6551) (Cons!6550 (h!7406 tuple2!6598) (t!11736 List!6554)) )
))
(declare-datatypes ((ListLongMap!5525 0))(
  ( (ListLongMap!5526 (toList!2778 List!6554)) )
))
(declare-fun call!27971 () ListLongMap!5525)

(declare-fun call!27970 () ListLongMap!5525)

(assert (=> b!398891 (= e!240976 (= call!27971 call!27970))))

(declare-fun b!398892 () Bool)

(declare-fun res!229392 () Bool)

(declare-fun e!240981 () Bool)

(assert (=> b!398892 (=> (not res!229392) (not e!240981))))

(assert (=> b!398892 (= res!229392 (or (= (select (arr!11372 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11372 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!398893 () Bool)

(declare-fun res!229382 () Bool)

(assert (=> b!398893 (=> (not res!229382) (not e!240981))))

(assert (=> b!398893 (= res!229382 (and (= (size!11723 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11724 _keys!709) (size!11723 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun bm!27967 () Bool)

(declare-fun lt!187496 () array!23851)

(declare-fun getCurrentListMapNoExtraKeys!995 (array!23851 array!23849 (_ BitVec 32) (_ BitVec 32) V!14419 V!14419 (_ BitVec 32) Int) ListLongMap!5525)

(assert (=> bm!27967 (= call!27970 (getCurrentListMapNoExtraKeys!995 (ite c!54536 lt!187496 _keys!709) (ite c!54536 (array!23850 (store (arr!11371 _values!549) i!563 (ValueCellFull!4649 v!412)) (size!11723 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!398894 () Bool)

(declare-fun res!229384 () Bool)

(assert (=> b!398894 (=> (not res!229384) (not e!240981))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!398894 (= res!229384 (validMask!0 mask!1025))))

(declare-fun b!398895 () Bool)

(declare-fun res!229389 () Bool)

(assert (=> b!398895 (=> (not res!229389) (not e!240981))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!398895 (= res!229389 (validKeyInArray!0 k!794))))

(declare-fun mapIsEmpty!16599 () Bool)

(declare-fun mapRes!16599 () Bool)

(assert (=> mapIsEmpty!16599 mapRes!16599))

(declare-fun b!398896 () Bool)

(declare-fun e!240980 () Bool)

(declare-fun tp_is_empty!9985 () Bool)

(assert (=> b!398896 (= e!240980 tp_is_empty!9985)))

(declare-fun b!398897 () Bool)

(declare-fun res!229381 () Bool)

(assert (=> b!398897 (=> (not res!229381) (not e!240981))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23851 (_ BitVec 32)) Bool)

(assert (=> b!398897 (= res!229381 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!16599 () Bool)

(declare-fun tp!32432 () Bool)

(assert (=> mapNonEmpty!16599 (= mapRes!16599 (and tp!32432 e!240980))))

(declare-fun mapRest!16599 () (Array (_ BitVec 32) ValueCell!4649))

(declare-fun mapValue!16599 () ValueCell!4649)

(declare-fun mapKey!16599 () (_ BitVec 32))

(assert (=> mapNonEmpty!16599 (= (arr!11371 _values!549) (store mapRest!16599 mapKey!16599 mapValue!16599))))

(declare-fun bm!27968 () Bool)

(assert (=> bm!27968 (= call!27971 (getCurrentListMapNoExtraKeys!995 (ite c!54536 _keys!709 lt!187496) (ite c!54536 _values!549 (array!23850 (store (arr!11371 _values!549) i!563 (ValueCellFull!4649 v!412)) (size!11723 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!398898 () Bool)

(declare-fun res!229386 () Bool)

(assert (=> b!398898 (=> (not res!229386) (not e!240981))))

(declare-fun arrayContainsKey!0 (array!23851 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!398898 (= res!229386 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!398899 () Bool)

(assert (=> b!398899 (= e!240981 e!240977)))

(declare-fun res!229383 () Bool)

(assert (=> b!398899 (=> (not res!229383) (not e!240977))))

(assert (=> b!398899 (= res!229383 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187496 mask!1025))))

(assert (=> b!398899 (= lt!187496 (array!23852 (store (arr!11372 _keys!709) i!563 k!794) (size!11724 _keys!709)))))

(declare-fun b!398900 () Bool)

(declare-fun e!240982 () Bool)

(declare-fun e!240979 () Bool)

(assert (=> b!398900 (= e!240982 (and e!240979 mapRes!16599))))

(declare-fun condMapEmpty!16599 () Bool)

(declare-fun mapDefault!16599 () ValueCell!4649)

