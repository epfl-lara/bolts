; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38700 () Bool)

(assert start!38700)

(declare-fun b_free!9229 () Bool)

(declare-fun b_next!9229 () Bool)

(assert (=> start!38700 (= b_free!9229 (not b_next!9229))))

(declare-fun tp!32810 () Bool)

(declare-fun b_and!16633 () Bool)

(assert (=> start!38700 (= tp!32810 b_and!16633)))

(declare-datatypes ((V!14587 0))(
  ( (V!14588 (val!5100 Int)) )
))
(declare-fun minValue!515 () V!14587)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4712 0))(
  ( (ValueCellFull!4712 (v!7343 V!14587)) (EmptyCell!4712) )
))
(declare-datatypes ((array!24093 0))(
  ( (array!24094 (arr!11493 (Array (_ BitVec 32) ValueCell!4712)) (size!11845 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24093)

(declare-fun zeroValue!515 () V!14587)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun bm!28345 () Bool)

(declare-fun c!54725 () Bool)

(declare-fun v!412 () V!14587)

(declare-datatypes ((array!24095 0))(
  ( (array!24096 (arr!11494 (Array (_ BitVec 32) (_ BitVec 64))) (size!11846 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24095)

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((tuple2!6710 0))(
  ( (tuple2!6711 (_1!3365 (_ BitVec 64)) (_2!3365 V!14587)) )
))
(declare-datatypes ((List!6656 0))(
  ( (Nil!6653) (Cons!6652 (h!7508 tuple2!6710) (t!11838 List!6656)) )
))
(declare-datatypes ((ListLongMap!5637 0))(
  ( (ListLongMap!5638 (toList!2834 List!6656)) )
))
(declare-fun call!28349 () ListLongMap!5637)

(declare-fun defaultEntry!557 () Int)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lt!187875 () array!24095)

(declare-fun getCurrentListMapNoExtraKeys!1047 (array!24095 array!24093 (_ BitVec 32) (_ BitVec 32) V!14587 V!14587 (_ BitVec 32) Int) ListLongMap!5637)

(assert (=> bm!28345 (= call!28349 (getCurrentListMapNoExtraKeys!1047 (ite c!54725 _keys!709 lt!187875) (ite c!54725 _values!549 (array!24094 (store (arr!11493 _values!549) i!563 (ValueCellFull!4712 v!412)) (size!11845 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!402103 () Bool)

(declare-fun e!242299 () Bool)

(declare-fun e!242304 () Bool)

(assert (=> b!402103 (= e!242299 e!242304)))

(declare-fun res!231649 () Bool)

(assert (=> b!402103 (=> (not res!231649) (not e!242304))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24095 (_ BitVec 32)) Bool)

(assert (=> b!402103 (= res!231649 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187875 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!402103 (= lt!187875 (array!24096 (store (arr!11494 _keys!709) i!563 k!794) (size!11846 _keys!709)))))

(declare-fun b!402104 () Bool)

(declare-fun res!231652 () Bool)

(assert (=> b!402104 (=> (not res!231652) (not e!242299))))

(declare-fun arrayContainsKey!0 (array!24095 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!402104 (= res!231652 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!16788 () Bool)

(declare-fun mapRes!16788 () Bool)

(declare-fun tp!32811 () Bool)

(declare-fun e!242301 () Bool)

(assert (=> mapNonEmpty!16788 (= mapRes!16788 (and tp!32811 e!242301))))

(declare-fun mapKey!16788 () (_ BitVec 32))

(declare-fun mapRest!16788 () (Array (_ BitVec 32) ValueCell!4712))

(declare-fun mapValue!16788 () ValueCell!4712)

(assert (=> mapNonEmpty!16788 (= (arr!11493 _values!549) (store mapRest!16788 mapKey!16788 mapValue!16788))))

(declare-fun b!402105 () Bool)

(declare-fun call!28348 () ListLongMap!5637)

(declare-fun e!242302 () Bool)

(declare-fun +!1114 (ListLongMap!5637 tuple2!6710) ListLongMap!5637)

(assert (=> b!402105 (= e!242302 (= call!28348 (+!1114 call!28349 (tuple2!6711 k!794 v!412))))))

(declare-fun b!402106 () Bool)

(declare-fun res!231657 () Bool)

(assert (=> b!402106 (=> (not res!231657) (not e!242299))))

(assert (=> b!402106 (= res!231657 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!402107 () Bool)

(declare-fun e!242303 () Bool)

(declare-fun tp_is_empty!10111 () Bool)

(assert (=> b!402107 (= e!242303 tp_is_empty!10111)))

(declare-fun b!402108 () Bool)

(declare-fun res!231654 () Bool)

(assert (=> b!402108 (=> (not res!231654) (not e!242299))))

(declare-datatypes ((List!6657 0))(
  ( (Nil!6654) (Cons!6653 (h!7509 (_ BitVec 64)) (t!11839 List!6657)) )
))
(declare-fun arrayNoDuplicates!0 (array!24095 (_ BitVec 32) List!6657) Bool)

(assert (=> b!402108 (= res!231654 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6654))))

(declare-fun b!402109 () Bool)

(assert (=> b!402109 (= e!242304 (not true))))

(assert (=> b!402109 e!242302))

(assert (=> b!402109 (= c!54725 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12123 0))(
  ( (Unit!12124) )
))
(declare-fun lt!187874 () Unit!12123)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!324 (array!24095 array!24093 (_ BitVec 32) (_ BitVec 32) V!14587 V!14587 (_ BitVec 32) (_ BitVec 64) V!14587 (_ BitVec 32) Int) Unit!12123)

(assert (=> b!402109 (= lt!187874 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!324 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!402110 () Bool)

(declare-fun res!231655 () Bool)

(assert (=> b!402110 (=> (not res!231655) (not e!242299))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!402110 (= res!231655 (validKeyInArray!0 k!794))))

(declare-fun mapIsEmpty!16788 () Bool)

(assert (=> mapIsEmpty!16788 mapRes!16788))

(declare-fun b!402112 () Bool)

(declare-fun res!231658 () Bool)

(assert (=> b!402112 (=> (not res!231658) (not e!242299))))

(assert (=> b!402112 (= res!231658 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11846 _keys!709))))))

(declare-fun b!402113 () Bool)

(assert (=> b!402113 (= e!242302 (= call!28349 call!28348))))

(declare-fun b!402114 () Bool)

(assert (=> b!402114 (= e!242301 tp_is_empty!10111)))

(declare-fun b!402115 () Bool)

(declare-fun res!231651 () Bool)

(assert (=> b!402115 (=> (not res!231651) (not e!242304))))

(assert (=> b!402115 (= res!231651 (arrayNoDuplicates!0 lt!187875 #b00000000000000000000000000000000 Nil!6654))))

(declare-fun b!402116 () Bool)

(declare-fun res!231659 () Bool)

(assert (=> b!402116 (=> (not res!231659) (not e!242299))))

(assert (=> b!402116 (= res!231659 (or (= (select (arr!11494 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11494 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!402117 () Bool)

(declare-fun res!231650 () Bool)

(assert (=> b!402117 (=> (not res!231650) (not e!242299))))

(assert (=> b!402117 (= res!231650 (and (= (size!11845 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11846 _keys!709) (size!11845 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun bm!28346 () Bool)

(assert (=> bm!28346 (= call!28348 (getCurrentListMapNoExtraKeys!1047 (ite c!54725 lt!187875 _keys!709) (ite c!54725 (array!24094 (store (arr!11493 _values!549) i!563 (ValueCellFull!4712 v!412)) (size!11845 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!402118 () Bool)

(declare-fun e!242300 () Bool)

(assert (=> b!402118 (= e!242300 (and e!242303 mapRes!16788))))

(declare-fun condMapEmpty!16788 () Bool)

(declare-fun mapDefault!16788 () ValueCell!4712)

