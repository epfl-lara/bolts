; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82934 () Bool)

(assert start!82934)

(declare-fun b_free!19033 () Bool)

(declare-fun b_next!19033 () Bool)

(assert (=> start!82934 (= b_free!19033 (not b_next!19033))))

(declare-fun tp!66228 () Bool)

(declare-fun b_and!30539 () Bool)

(assert (=> start!82934 (= tp!66228 b_and!30539)))

(declare-fun b!967233 () Bool)

(declare-fun res!647587 () Bool)

(declare-fun e!545209 () Bool)

(assert (=> b!967233 (=> (not res!647587) (not e!545209))))

(declare-datatypes ((V!34105 0))(
  ( (V!34106 (val!10971 Int)) )
))
(declare-datatypes ((ValueCell!10439 0))(
  ( (ValueCellFull!10439 (v!13529 V!34105)) (EmptyCell!10439) )
))
(declare-datatypes ((array!59737 0))(
  ( (array!59738 (arr!28733 (Array (_ BitVec 32) ValueCell!10439)) (size!29213 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59737)

(declare-datatypes ((array!59739 0))(
  ( (array!59740 (arr!28734 (Array (_ BitVec 32) (_ BitVec 64))) (size!29214 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59739)

(declare-fun minValue!1342 () V!34105)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!34105)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14198 0))(
  ( (tuple2!14199 (_1!7109 (_ BitVec 64)) (_2!7109 V!34105)) )
))
(declare-datatypes ((List!20072 0))(
  ( (Nil!20069) (Cons!20068 (h!21230 tuple2!14198) (t!28443 List!20072)) )
))
(declare-datatypes ((ListLongMap!12909 0))(
  ( (ListLongMap!12910 (toList!6470 List!20072)) )
))
(declare-fun contains!5521 (ListLongMap!12909 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3655 (array!59739 array!59737 (_ BitVec 32) (_ BitVec 32) V!34105 V!34105 (_ BitVec 32) Int) ListLongMap!12909)

(assert (=> b!967233 (= res!647587 (contains!5521 (getCurrentListMap!3655 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28734 _keys!1686) i!803)))))

(declare-fun mapIsEmpty!34756 () Bool)

(declare-fun mapRes!34756 () Bool)

(assert (=> mapIsEmpty!34756 mapRes!34756))

(declare-fun b!967234 () Bool)

(declare-fun res!647588 () Bool)

(assert (=> b!967234 (=> (not res!647588) (not e!545209))))

(assert (=> b!967234 (= res!647588 (and (= (size!29213 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29214 _keys!1686) (size!29213 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!967235 () Bool)

(declare-fun e!545206 () Bool)

(declare-fun e!545207 () Bool)

(assert (=> b!967235 (= e!545206 (and e!545207 mapRes!34756))))

(declare-fun condMapEmpty!34756 () Bool)

(declare-fun mapDefault!34756 () ValueCell!10439)

