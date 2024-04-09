; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82992 () Bool)

(assert start!82992)

(declare-fun b_free!19091 () Bool)

(declare-fun b_next!19091 () Bool)

(assert (=> start!82992 (= b_free!19091 (not b_next!19091))))

(declare-fun tp!66403 () Bool)

(declare-fun b_and!30597 () Bool)

(assert (=> start!82992 (= tp!66403 b_and!30597)))

(declare-fun b!968208 () Bool)

(declare-fun e!545660 () Bool)

(declare-fun tp_is_empty!21899 () Bool)

(assert (=> b!968208 (= e!545660 tp_is_empty!21899)))

(declare-fun mapIsEmpty!34843 () Bool)

(declare-fun mapRes!34843 () Bool)

(assert (=> mapIsEmpty!34843 mapRes!34843))

(declare-fun b!968209 () Bool)

(declare-fun res!648301 () Bool)

(declare-fun e!545658 () Bool)

(assert (=> b!968209 (=> (not res!648301) (not e!545658))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!34181 0))(
  ( (V!34182 (val!11000 Int)) )
))
(declare-datatypes ((ValueCell!10468 0))(
  ( (ValueCellFull!10468 (v!13558 V!34181)) (EmptyCell!10468) )
))
(declare-datatypes ((array!59849 0))(
  ( (array!59850 (arr!28789 (Array (_ BitVec 32) ValueCell!10468)) (size!29269 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59849)

(declare-datatypes ((array!59851 0))(
  ( (array!59852 (arr!28790 (Array (_ BitVec 32) (_ BitVec 64))) (size!29270 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59851)

(declare-fun minValue!1342 () V!34181)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!34181)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14242 0))(
  ( (tuple2!14243 (_1!7131 (_ BitVec 64)) (_2!7131 V!34181)) )
))
(declare-datatypes ((List!20113 0))(
  ( (Nil!20110) (Cons!20109 (h!21271 tuple2!14242) (t!28484 List!20113)) )
))
(declare-datatypes ((ListLongMap!12953 0))(
  ( (ListLongMap!12954 (toList!6492 List!20113)) )
))
(declare-fun contains!5543 (ListLongMap!12953 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3677 (array!59851 array!59849 (_ BitVec 32) (_ BitVec 32) V!34181 V!34181 (_ BitVec 32) Int) ListLongMap!12953)

(assert (=> b!968209 (= res!648301 (contains!5543 (getCurrentListMap!3677 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28790 _keys!1686) i!803)))))

(declare-fun b!968210 () Bool)

(declare-fun res!648298 () Bool)

(assert (=> b!968210 (=> (not res!648298) (not e!545658))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59851 (_ BitVec 32)) Bool)

(assert (=> b!968210 (= res!648298 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!968211 () Bool)

(declare-fun e!545661 () Bool)

(assert (=> b!968211 (= e!545661 (and e!545660 mapRes!34843))))

(declare-fun condMapEmpty!34843 () Bool)

(declare-fun mapDefault!34843 () ValueCell!10468)

