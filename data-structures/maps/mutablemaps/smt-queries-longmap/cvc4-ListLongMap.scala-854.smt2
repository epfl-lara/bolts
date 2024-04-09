; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20236 () Bool)

(assert start!20236)

(declare-fun b_free!4883 () Bool)

(declare-fun b_next!4883 () Bool)

(assert (=> start!20236 (= b_free!4883 (not b_next!4883))))

(declare-fun tp!17680 () Bool)

(declare-fun b_and!11647 () Bool)

(assert (=> start!20236 (= tp!17680 b_and!11647)))

(declare-fun b!198750 () Bool)

(declare-fun res!94332 () Bool)

(declare-fun e!130585 () Bool)

(assert (=> b!198750 (=> (not res!94332) (not e!130585))))

(declare-datatypes ((array!8718 0))(
  ( (array!8719 (arr!4109 (Array (_ BitVec 32) (_ BitVec 64))) (size!4434 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8718)

(declare-datatypes ((List!2592 0))(
  ( (Nil!2589) (Cons!2588 (h!3230 (_ BitVec 64)) (t!7531 List!2592)) )
))
(declare-fun arrayNoDuplicates!0 (array!8718 (_ BitVec 32) List!2592) Bool)

(assert (=> b!198750 (= res!94332 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2589))))

(declare-fun b!198751 () Bool)

(declare-fun res!94331 () Bool)

(assert (=> b!198751 (=> (not res!94331) (not e!130585))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!198751 (= res!94331 (= (select (arr!4109 _keys!825) i!601) k!843))))

(declare-fun b!198752 () Bool)

(declare-fun res!94334 () Bool)

(assert (=> b!198752 (=> (not res!94334) (not e!130585))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!198752 (= res!94334 (validKeyInArray!0 k!843))))

(declare-fun b!198753 () Bool)

(declare-fun res!94335 () Bool)

(assert (=> b!198753 (=> (not res!94335) (not e!130585))))

(assert (=> b!198753 (= res!94335 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4434 _keys!825))))))

(declare-fun b!198754 () Bool)

(assert (=> b!198754 (= e!130585 (not true))))

(declare-datatypes ((V!5965 0))(
  ( (V!5966 (val!2414 Int)) )
))
(declare-datatypes ((tuple2!3654 0))(
  ( (tuple2!3655 (_1!1837 (_ BitVec 64)) (_2!1837 V!5965)) )
))
(declare-datatypes ((List!2593 0))(
  ( (Nil!2590) (Cons!2589 (h!3231 tuple2!3654) (t!7532 List!2593)) )
))
(declare-datatypes ((ListLongMap!2581 0))(
  ( (ListLongMap!2582 (toList!1306 List!2593)) )
))
(declare-fun lt!98063 () ListLongMap!2581)

(declare-fun lt!98064 () ListLongMap!2581)

(assert (=> b!198754 (and (= lt!98063 lt!98064) (= lt!98064 lt!98063))))

(declare-fun v!520 () V!5965)

(declare-fun lt!98065 () ListLongMap!2581)

(declare-fun +!323 (ListLongMap!2581 tuple2!3654) ListLongMap!2581)

(assert (=> b!198754 (= lt!98064 (+!323 lt!98065 (tuple2!3655 k!843 v!520)))))

(declare-datatypes ((Unit!5955 0))(
  ( (Unit!5956) )
))
(declare-fun lt!98062 () Unit!5955)

(declare-datatypes ((ValueCell!2026 0))(
  ( (ValueCellFull!2026 (v!4380 V!5965)) (EmptyCell!2026) )
))
(declare-datatypes ((array!8720 0))(
  ( (array!8721 (arr!4110 (Array (_ BitVec 32) ValueCell!2026)) (size!4435 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8720)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!5965)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!5965)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!5 (array!8718 array!8720 (_ BitVec 32) (_ BitVec 32) V!5965 V!5965 (_ BitVec 32) (_ BitVec 64) V!5965 (_ BitVec 32) Int) Unit!5955)

(assert (=> b!198754 (= lt!98062 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!5 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!263 (array!8718 array!8720 (_ BitVec 32) (_ BitVec 32) V!5965 V!5965 (_ BitVec 32) Int) ListLongMap!2581)

(assert (=> b!198754 (= lt!98063 (getCurrentListMapNoExtraKeys!263 _keys!825 (array!8721 (store (arr!4110 _values!649) i!601 (ValueCellFull!2026 v!520)) (size!4435 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!198754 (= lt!98065 (getCurrentListMapNoExtraKeys!263 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!198755 () Bool)

(declare-fun res!94336 () Bool)

(assert (=> b!198755 (=> (not res!94336) (not e!130585))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8718 (_ BitVec 32)) Bool)

(assert (=> b!198755 (= res!94336 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!198756 () Bool)

(declare-fun e!130581 () Bool)

(declare-fun e!130583 () Bool)

(declare-fun mapRes!8177 () Bool)

(assert (=> b!198756 (= e!130581 (and e!130583 mapRes!8177))))

(declare-fun condMapEmpty!8177 () Bool)

(declare-fun mapDefault!8177 () ValueCell!2026)

