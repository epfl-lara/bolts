; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82662 () Bool)

(assert start!82662)

(declare-fun b_free!18767 () Bool)

(declare-fun b_next!18767 () Bool)

(assert (=> start!82662 (= b_free!18767 (not b_next!18767))))

(declare-fun tp!65422 () Bool)

(declare-fun b_and!30273 () Bool)

(assert (=> start!82662 (= tp!65422 b_and!30273)))

(declare-fun b!963078 () Bool)

(declare-fun res!644660 () Bool)

(declare-fun e!543085 () Bool)

(assert (=> b!963078 (=> (not res!644660) (not e!543085))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33741 0))(
  ( (V!33742 (val!10835 Int)) )
))
(declare-datatypes ((ValueCell!10303 0))(
  ( (ValueCellFull!10303 (v!13393 V!33741)) (EmptyCell!10303) )
))
(declare-datatypes ((array!59215 0))(
  ( (array!59216 (arr!28472 (Array (_ BitVec 32) ValueCell!10303)) (size!28952 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59215)

(declare-datatypes ((array!59217 0))(
  ( (array!59218 (arr!28473 (Array (_ BitVec 32) (_ BitVec 64))) (size!28953 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59217)

(declare-fun minValue!1342 () V!33741)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!33741)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14002 0))(
  ( (tuple2!14003 (_1!7011 (_ BitVec 64)) (_2!7011 V!33741)) )
))
(declare-datatypes ((List!19884 0))(
  ( (Nil!19881) (Cons!19880 (h!21042 tuple2!14002) (t!28255 List!19884)) )
))
(declare-datatypes ((ListLongMap!12713 0))(
  ( (ListLongMap!12714 (toList!6372 List!19884)) )
))
(declare-fun contains!5426 (ListLongMap!12713 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3557 (array!59217 array!59215 (_ BitVec 32) (_ BitVec 32) V!33741 V!33741 (_ BitVec 32) Int) ListLongMap!12713)

(assert (=> b!963078 (= res!644660 (contains!5426 (getCurrentListMap!3557 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28473 _keys!1686) i!803)))))

(declare-fun b!963079 () Bool)

(declare-fun e!543084 () Bool)

(declare-fun tp_is_empty!21569 () Bool)

(assert (=> b!963079 (= e!543084 tp_is_empty!21569)))

(declare-fun b!963080 () Bool)

(declare-fun e!543087 () Bool)

(declare-fun e!543086 () Bool)

(declare-fun mapRes!34348 () Bool)

(assert (=> b!963080 (= e!543087 (and e!543086 mapRes!34348))))

(declare-fun condMapEmpty!34348 () Bool)

(declare-fun mapDefault!34348 () ValueCell!10303)

