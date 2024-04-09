; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33656 () Bool)

(assert start!33656)

(declare-fun b_free!6883 () Bool)

(declare-fun b_next!6883 () Bool)

(assert (=> start!33656 (= b_free!6883 (not b_next!6883))))

(declare-fun tp!24153 () Bool)

(declare-fun b_and!14081 () Bool)

(assert (=> start!33656 (= tp!24153 b_and!14081)))

(declare-fun b!333871 () Bool)

(declare-fun res!184068 () Bool)

(declare-fun e!204990 () Bool)

(assert (=> b!333871 (=> (not res!184068) (not e!204990))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!333871 (= res!184068 (validKeyInArray!0 k!1348))))

(declare-fun b!333872 () Bool)

(declare-fun res!184067 () Bool)

(assert (=> b!333872 (=> (not res!184067) (not e!204990))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10091 0))(
  ( (V!10092 (val!3462 Int)) )
))
(declare-fun zeroValue!1467 () V!10091)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3074 0))(
  ( (ValueCellFull!3074 (v!5620 V!10091)) (EmptyCell!3074) )
))
(declare-datatypes ((array!17261 0))(
  ( (array!17262 (arr!8158 (Array (_ BitVec 32) ValueCell!3074)) (size!8510 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17261)

(declare-datatypes ((array!17263 0))(
  ( (array!17264 (arr!8159 (Array (_ BitVec 32) (_ BitVec 64))) (size!8511 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17263)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10091)

(declare-datatypes ((tuple2!5032 0))(
  ( (tuple2!5033 (_1!2526 (_ BitVec 64)) (_2!2526 V!10091)) )
))
(declare-datatypes ((List!4673 0))(
  ( (Nil!4670) (Cons!4669 (h!5525 tuple2!5032) (t!9769 List!4673)) )
))
(declare-datatypes ((ListLongMap!3959 0))(
  ( (ListLongMap!3960 (toList!1995 List!4673)) )
))
(declare-fun contains!2035 (ListLongMap!3959 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1518 (array!17263 array!17261 (_ BitVec 32) (_ BitVec 32) V!10091 V!10091 (_ BitVec 32) Int) ListLongMap!3959)

(assert (=> b!333872 (= res!184067 (not (contains!2035 (getCurrentListMap!1518 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!333874 () Bool)

(declare-fun res!184066 () Bool)

(declare-fun e!204985 () Bool)

(assert (=> b!333874 (=> (not res!184066) (not e!204985))))

(declare-datatypes ((SeekEntryResult!3165 0))(
  ( (MissingZero!3165 (index!14839 (_ BitVec 32))) (Found!3165 (index!14840 (_ BitVec 32))) (Intermediate!3165 (undefined!3977 Bool) (index!14841 (_ BitVec 32)) (x!33294 (_ BitVec 32))) (Undefined!3165) (MissingVacant!3165 (index!14842 (_ BitVec 32))) )
))
(declare-fun lt!159417 () SeekEntryResult!3165)

(declare-fun arrayContainsKey!0 (array!17263 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!333874 (= res!184066 (arrayContainsKey!0 _keys!1895 k!1348 (index!14840 lt!159417)))))

(declare-fun b!333875 () Bool)

(declare-fun e!204988 () Bool)

(declare-fun tp_is_empty!6835 () Bool)

(assert (=> b!333875 (= e!204988 tp_is_empty!6835)))

(declare-fun b!333876 () Bool)

(declare-fun e!204987 () Bool)

(declare-fun mapRes!11649 () Bool)

(assert (=> b!333876 (= e!204987 (and e!204988 mapRes!11649))))

(declare-fun condMapEmpty!11649 () Bool)

(declare-fun mapDefault!11649 () ValueCell!3074)

