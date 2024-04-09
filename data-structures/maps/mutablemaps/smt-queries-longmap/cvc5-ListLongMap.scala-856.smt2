; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20244 () Bool)

(assert start!20244)

(declare-fun b_free!4891 () Bool)

(declare-fun b_next!4891 () Bool)

(assert (=> start!20244 (= b_free!4891 (not b_next!4891))))

(declare-fun tp!17705 () Bool)

(declare-fun b_and!11655 () Bool)

(assert (=> start!20244 (= tp!17705 b_and!11655)))

(declare-fun b!198870 () Bool)

(declare-fun res!94417 () Bool)

(declare-fun e!130641 () Bool)

(assert (=> b!198870 (=> (not res!94417) (not e!130641))))

(declare-datatypes ((array!8734 0))(
  ( (array!8735 (arr!4117 (Array (_ BitVec 32) (_ BitVec 64))) (size!4442 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8734)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!5977 0))(
  ( (V!5978 (val!2418 Int)) )
))
(declare-datatypes ((ValueCell!2030 0))(
  ( (ValueCellFull!2030 (v!4384 V!5977)) (EmptyCell!2030) )
))
(declare-datatypes ((array!8736 0))(
  ( (array!8737 (arr!4118 (Array (_ BitVec 32) ValueCell!2030)) (size!4443 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8736)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!198870 (= res!94417 (and (= (size!4443 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4442 _keys!825) (size!4443 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!198871 () Bool)

(declare-fun res!94416 () Bool)

(assert (=> b!198871 (=> (not res!94416) (not e!130641))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!198871 (= res!94416 (validKeyInArray!0 k!843))))

(declare-fun b!198872 () Bool)

(declare-fun e!130645 () Bool)

(declare-fun tp_is_empty!4747 () Bool)

(assert (=> b!198872 (= e!130645 tp_is_empty!4747)))

(declare-fun b!198873 () Bool)

(declare-fun res!94414 () Bool)

(assert (=> b!198873 (=> (not res!94414) (not e!130641))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!198873 (= res!94414 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4442 _keys!825))))))

(declare-fun b!198874 () Bool)

(assert (=> b!198874 (= e!130641 (not true))))

(declare-datatypes ((tuple2!3660 0))(
  ( (tuple2!3661 (_1!1840 (_ BitVec 64)) (_2!1840 V!5977)) )
))
(declare-datatypes ((List!2599 0))(
  ( (Nil!2596) (Cons!2595 (h!3237 tuple2!3660) (t!7538 List!2599)) )
))
(declare-datatypes ((ListLongMap!2587 0))(
  ( (ListLongMap!2588 (toList!1309 List!2599)) )
))
(declare-fun lt!98112 () ListLongMap!2587)

(declare-fun lt!98113 () ListLongMap!2587)

(assert (=> b!198874 (and (= lt!98112 lt!98113) (= lt!98113 lt!98112))))

(declare-fun v!520 () V!5977)

(declare-fun lt!98110 () ListLongMap!2587)

(declare-fun +!326 (ListLongMap!2587 tuple2!3660) ListLongMap!2587)

(assert (=> b!198874 (= lt!98113 (+!326 lt!98110 (tuple2!3661 k!843 v!520)))))

(declare-datatypes ((Unit!5961 0))(
  ( (Unit!5962) )
))
(declare-fun lt!98111 () Unit!5961)

(declare-fun zeroValue!615 () V!5977)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!5977)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!8 (array!8734 array!8736 (_ BitVec 32) (_ BitVec 32) V!5977 V!5977 (_ BitVec 32) (_ BitVec 64) V!5977 (_ BitVec 32) Int) Unit!5961)

(assert (=> b!198874 (= lt!98111 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!8 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!266 (array!8734 array!8736 (_ BitVec 32) (_ BitVec 32) V!5977 V!5977 (_ BitVec 32) Int) ListLongMap!2587)

(assert (=> b!198874 (= lt!98112 (getCurrentListMapNoExtraKeys!266 _keys!825 (array!8737 (store (arr!4118 _values!649) i!601 (ValueCellFull!2030 v!520)) (size!4443 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!198874 (= lt!98110 (getCurrentListMapNoExtraKeys!266 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!198875 () Bool)

(declare-fun e!130644 () Bool)

(assert (=> b!198875 (= e!130644 tp_is_empty!4747)))

(declare-fun b!198876 () Bool)

(declare-fun res!94415 () Bool)

(assert (=> b!198876 (=> (not res!94415) (not e!130641))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8734 (_ BitVec 32)) Bool)

(assert (=> b!198876 (= res!94415 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapIsEmpty!8189 () Bool)

(declare-fun mapRes!8189 () Bool)

(assert (=> mapIsEmpty!8189 mapRes!8189))

(declare-fun b!198877 () Bool)

(declare-fun res!94419 () Bool)

(assert (=> b!198877 (=> (not res!94419) (not e!130641))))

(assert (=> b!198877 (= res!94419 (= (select (arr!4117 _keys!825) i!601) k!843))))

(declare-fun b!198878 () Bool)

(declare-fun res!94420 () Bool)

(assert (=> b!198878 (=> (not res!94420) (not e!130641))))

(declare-datatypes ((List!2600 0))(
  ( (Nil!2597) (Cons!2596 (h!3238 (_ BitVec 64)) (t!7539 List!2600)) )
))
(declare-fun arrayNoDuplicates!0 (array!8734 (_ BitVec 32) List!2600) Bool)

(assert (=> b!198878 (= res!94420 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2597))))

(declare-fun b!198879 () Bool)

(declare-fun e!130642 () Bool)

(assert (=> b!198879 (= e!130642 (and e!130645 mapRes!8189))))

(declare-fun condMapEmpty!8189 () Bool)

(declare-fun mapDefault!8189 () ValueCell!2030)

