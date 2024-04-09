; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82820 () Bool)

(assert start!82820)

(declare-fun b_free!18919 () Bool)

(declare-fun b_next!18919 () Bool)

(assert (=> start!82820 (= b_free!18919 (not b_next!18919))))

(declare-fun tp!65886 () Bool)

(declare-fun b_and!30425 () Bool)

(assert (=> start!82820 (= tp!65886 b_and!30425)))

(declare-fun b!965573 () Bool)

(declare-fun e!544351 () Bool)

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!965573 (= e!544351 (bvslt i!803 #b00000000000000000000000000000000))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33953 0))(
  ( (V!33954 (val!10914 Int)) )
))
(declare-datatypes ((tuple2!14110 0))(
  ( (tuple2!14111 (_1!7065 (_ BitVec 64)) (_2!7065 V!33953)) )
))
(declare-datatypes ((List!19992 0))(
  ( (Nil!19989) (Cons!19988 (h!21150 tuple2!14110) (t!28363 List!19992)) )
))
(declare-datatypes ((ListLongMap!12821 0))(
  ( (ListLongMap!12822 (toList!6426 List!19992)) )
))
(declare-fun lt!431199 () ListLongMap!12821)

(declare-datatypes ((ValueCell!10382 0))(
  ( (ValueCellFull!10382 (v!13472 V!33953)) (EmptyCell!10382) )
))
(declare-datatypes ((array!59519 0))(
  ( (array!59520 (arr!28624 (Array (_ BitVec 32) ValueCell!10382)) (size!29104 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59519)

(declare-datatypes ((array!59521 0))(
  ( (array!59522 (arr!28625 (Array (_ BitVec 32) (_ BitVec 64))) (size!29105 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59521)

(declare-fun minValue!1342 () V!33953)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!33953)

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun getCurrentListMap!3611 (array!59521 array!59519 (_ BitVec 32) (_ BitVec 32) V!33953 V!33953 (_ BitVec 32) Int) ListLongMap!12821)

(assert (=> b!965573 (= lt!431199 (getCurrentListMap!3611 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403))))

(declare-fun b!965574 () Bool)

(declare-fun e!544353 () Bool)

(declare-fun e!544354 () Bool)

(declare-fun mapRes!34585 () Bool)

(assert (=> b!965574 (= e!544353 (and e!544354 mapRes!34585))))

(declare-fun condMapEmpty!34585 () Bool)

(declare-fun mapDefault!34585 () ValueCell!10382)

