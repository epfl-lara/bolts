; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82968 () Bool)

(assert start!82968)

(declare-fun b_free!19067 () Bool)

(declare-fun b_next!19067 () Bool)

(assert (=> start!82968 (= b_free!19067 (not b_next!19067))))

(declare-fun tp!66331 () Bool)

(declare-fun b_and!30573 () Bool)

(assert (=> start!82968 (= tp!66331 b_and!30573)))

(declare-fun b!967794 () Bool)

(declare-fun e!545461 () Bool)

(declare-fun tp_is_empty!21875 () Bool)

(assert (=> b!967794 (= e!545461 tp_is_empty!21875)))

(declare-fun b!967796 () Bool)

(declare-fun res!647998 () Bool)

(declare-fun e!545462 () Bool)

(assert (=> b!967796 (=> (not res!647998) (not e!545462))))

(declare-datatypes ((array!59801 0))(
  ( (array!59802 (arr!28765 (Array (_ BitVec 32) (_ BitVec 64))) (size!29245 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59801)

(declare-datatypes ((List!20097 0))(
  ( (Nil!20094) (Cons!20093 (h!21255 (_ BitVec 64)) (t!28468 List!20097)) )
))
(declare-fun arrayNoDuplicates!0 (array!59801 (_ BitVec 32) List!20097) Bool)

(assert (=> b!967796 (= res!647998 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20094))))

(declare-fun b!967797 () Bool)

(declare-fun res!647992 () Bool)

(assert (=> b!967797 (=> (not res!647992) (not e!545462))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!34149 0))(
  ( (V!34150 (val!10988 Int)) )
))
(declare-datatypes ((ValueCell!10456 0))(
  ( (ValueCellFull!10456 (v!13546 V!34149)) (EmptyCell!10456) )
))
(declare-datatypes ((array!59803 0))(
  ( (array!59804 (arr!28766 (Array (_ BitVec 32) ValueCell!10456)) (size!29246 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59803)

(declare-fun minValue!1342 () V!34149)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!34149)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14224 0))(
  ( (tuple2!14225 (_1!7122 (_ BitVec 64)) (_2!7122 V!34149)) )
))
(declare-datatypes ((List!20098 0))(
  ( (Nil!20095) (Cons!20094 (h!21256 tuple2!14224) (t!28469 List!20098)) )
))
(declare-datatypes ((ListLongMap!12935 0))(
  ( (ListLongMap!12936 (toList!6483 List!20098)) )
))
(declare-fun contains!5534 (ListLongMap!12935 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3668 (array!59801 array!59803 (_ BitVec 32) (_ BitVec 32) V!34149 V!34149 (_ BitVec 32) Int) ListLongMap!12935)

(assert (=> b!967797 (= res!647992 (contains!5534 (getCurrentListMap!3668 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28765 _keys!1686) i!803)))))

(declare-fun b!967798 () Bool)

(declare-fun res!647997 () Bool)

(assert (=> b!967798 (=> (not res!647997) (not e!545462))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!967798 (= res!647997 (validKeyInArray!0 (select (arr!28765 _keys!1686) i!803)))))

(declare-fun b!967799 () Bool)

(declare-fun e!545460 () Bool)

(assert (=> b!967799 (= e!545460 tp_is_empty!21875)))

(declare-fun b!967800 () Bool)

(declare-fun e!545464 () Bool)

(declare-fun mapRes!34807 () Bool)

(assert (=> b!967800 (= e!545464 (and e!545461 mapRes!34807))))

(declare-fun condMapEmpty!34807 () Bool)

(declare-fun mapDefault!34807 () ValueCell!10456)

