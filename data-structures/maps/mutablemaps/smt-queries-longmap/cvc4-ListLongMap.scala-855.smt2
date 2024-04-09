; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20242 () Bool)

(assert start!20242)

(declare-fun b_free!4889 () Bool)

(declare-fun b_next!4889 () Bool)

(assert (=> start!20242 (= b_free!4889 (not b_next!4889))))

(declare-fun tp!17698 () Bool)

(declare-fun b_and!11653 () Bool)

(assert (=> start!20242 (= tp!17698 b_and!11653)))

(declare-fun b!198840 () Bool)

(declare-fun res!94396 () Bool)

(declare-fun e!130630 () Bool)

(assert (=> b!198840 (=> (not res!94396) (not e!130630))))

(declare-datatypes ((array!8730 0))(
  ( (array!8731 (arr!4115 (Array (_ BitVec 32) (_ BitVec 64))) (size!4440 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8730)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!5973 0))(
  ( (V!5974 (val!2417 Int)) )
))
(declare-datatypes ((ValueCell!2029 0))(
  ( (ValueCellFull!2029 (v!4383 V!5973)) (EmptyCell!2029) )
))
(declare-datatypes ((array!8732 0))(
  ( (array!8733 (arr!4116 (Array (_ BitVec 32) ValueCell!2029)) (size!4441 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8732)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!198840 (= res!94396 (and (= (size!4441 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4440 _keys!825) (size!4441 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!198841 () Bool)

(declare-fun res!94398 () Bool)

(assert (=> b!198841 (=> (not res!94398) (not e!130630))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!198841 (= res!94398 (= (select (arr!4115 _keys!825) i!601) k!843))))

(declare-fun b!198842 () Bool)

(declare-fun res!94397 () Bool)

(assert (=> b!198842 (=> (not res!94397) (not e!130630))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8730 (_ BitVec 32)) Bool)

(assert (=> b!198842 (= res!94397 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!198843 () Bool)

(assert (=> b!198843 (= e!130630 (not true))))

(declare-datatypes ((tuple2!3658 0))(
  ( (tuple2!3659 (_1!1839 (_ BitVec 64)) (_2!1839 V!5973)) )
))
(declare-datatypes ((List!2597 0))(
  ( (Nil!2594) (Cons!2593 (h!3235 tuple2!3658) (t!7536 List!2597)) )
))
(declare-datatypes ((ListLongMap!2585 0))(
  ( (ListLongMap!2586 (toList!1308 List!2597)) )
))
(declare-fun lt!98101 () ListLongMap!2585)

(declare-fun lt!98100 () ListLongMap!2585)

(assert (=> b!198843 (and (= lt!98101 lt!98100) (= lt!98100 lt!98101))))

(declare-fun lt!98098 () ListLongMap!2585)

(declare-fun v!520 () V!5973)

(declare-fun +!325 (ListLongMap!2585 tuple2!3658) ListLongMap!2585)

(assert (=> b!198843 (= lt!98100 (+!325 lt!98098 (tuple2!3659 k!843 v!520)))))

(declare-datatypes ((Unit!5959 0))(
  ( (Unit!5960) )
))
(declare-fun lt!98099 () Unit!5959)

(declare-fun zeroValue!615 () V!5973)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!5973)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!7 (array!8730 array!8732 (_ BitVec 32) (_ BitVec 32) V!5973 V!5973 (_ BitVec 32) (_ BitVec 64) V!5973 (_ BitVec 32) Int) Unit!5959)

(assert (=> b!198843 (= lt!98099 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!7 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!265 (array!8730 array!8732 (_ BitVec 32) (_ BitVec 32) V!5973 V!5973 (_ BitVec 32) Int) ListLongMap!2585)

(assert (=> b!198843 (= lt!98101 (getCurrentListMapNoExtraKeys!265 _keys!825 (array!8733 (store (arr!4116 _values!649) i!601 (ValueCellFull!2029 v!520)) (size!4441 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!198843 (= lt!98098 (getCurrentListMapNoExtraKeys!265 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!198844 () Bool)

(declare-fun res!94399 () Bool)

(assert (=> b!198844 (=> (not res!94399) (not e!130630))))

(declare-datatypes ((List!2598 0))(
  ( (Nil!2595) (Cons!2594 (h!3236 (_ BitVec 64)) (t!7537 List!2598)) )
))
(declare-fun arrayNoDuplicates!0 (array!8730 (_ BitVec 32) List!2598) Bool)

(assert (=> b!198844 (= res!94399 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2595))))

(declare-fun b!198845 () Bool)

(declare-fun res!94394 () Bool)

(assert (=> b!198845 (=> (not res!94394) (not e!130630))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!198845 (= res!94394 (validKeyInArray!0 k!843))))

(declare-fun b!198846 () Bool)

(declare-fun res!94393 () Bool)

(assert (=> b!198846 (=> (not res!94393) (not e!130630))))

(assert (=> b!198846 (= res!94393 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4440 _keys!825))))))

(declare-fun b!198847 () Bool)

(declare-fun e!130628 () Bool)

(declare-fun e!130629 () Bool)

(declare-fun mapRes!8186 () Bool)

(assert (=> b!198847 (= e!130628 (and e!130629 mapRes!8186))))

(declare-fun condMapEmpty!8186 () Bool)

(declare-fun mapDefault!8186 () ValueCell!2029)

