; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82898 () Bool)

(assert start!82898)

(declare-fun b_free!18997 () Bool)

(declare-fun b_next!18997 () Bool)

(assert (=> start!82898 (= b_free!18997 (not b_next!18997))))

(declare-fun tp!66120 () Bool)

(declare-fun b_and!30503 () Bool)

(assert (=> start!82898 (= tp!66120 b_and!30503)))

(declare-fun mapIsEmpty!34702 () Bool)

(declare-fun mapRes!34702 () Bool)

(assert (=> mapIsEmpty!34702 mapRes!34702))

(declare-fun b!966639 () Bool)

(declare-fun res!647155 () Bool)

(declare-fun e!544938 () Bool)

(assert (=> b!966639 (=> (not res!647155) (not e!544938))))

(declare-datatypes ((array!59673 0))(
  ( (array!59674 (arr!28701 (Array (_ BitVec 32) (_ BitVec 64))) (size!29181 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59673)

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!966639 (= res!647155 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29181 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29181 _keys!1686))))))

(declare-fun b!966640 () Bool)

(declare-fun res!647152 () Bool)

(assert (=> b!966640 (=> (not res!647152) (not e!544938))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!34057 0))(
  ( (V!34058 (val!10953 Int)) )
))
(declare-datatypes ((ValueCell!10421 0))(
  ( (ValueCellFull!10421 (v!13511 V!34057)) (EmptyCell!10421) )
))
(declare-datatypes ((array!59675 0))(
  ( (array!59676 (arr!28702 (Array (_ BitVec 32) ValueCell!10421)) (size!29182 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59675)

(declare-fun minValue!1342 () V!34057)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!34057)

(declare-datatypes ((tuple2!14174 0))(
  ( (tuple2!14175 (_1!7097 (_ BitVec 64)) (_2!7097 V!34057)) )
))
(declare-datatypes ((List!20050 0))(
  ( (Nil!20047) (Cons!20046 (h!21208 tuple2!14174) (t!28421 List!20050)) )
))
(declare-datatypes ((ListLongMap!12885 0))(
  ( (ListLongMap!12886 (toList!6458 List!20050)) )
))
(declare-fun contains!5509 (ListLongMap!12885 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3643 (array!59673 array!59675 (_ BitVec 32) (_ BitVec 32) V!34057 V!34057 (_ BitVec 32) Int) ListLongMap!12885)

(assert (=> b!966640 (= res!647152 (contains!5509 (getCurrentListMap!3643 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28701 _keys!1686) i!803)))))

(declare-fun b!966641 () Bool)

(declare-fun e!544937 () Bool)

(declare-fun e!544935 () Bool)

(assert (=> b!966641 (= e!544937 (and e!544935 mapRes!34702))))

(declare-fun condMapEmpty!34702 () Bool)

(declare-fun mapDefault!34702 () ValueCell!10421)

