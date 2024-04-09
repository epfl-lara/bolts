; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35608 () Bool)

(assert start!35608)

(declare-fun b!356884 () Bool)

(declare-fun e!218584 () Bool)

(assert (=> b!356884 (= e!218584 (not true))))

(declare-datatypes ((array!19641 0))(
  ( (array!19642 (arr!9311 (Array (_ BitVec 32) (_ BitVec 64))) (size!9663 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19641)

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!19641 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!356884 (arrayContainsKey!0 _keys!1456 k!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-datatypes ((Unit!10997 0))(
  ( (Unit!10998) )
))
(declare-fun lt!165955 () Unit!10997)

(declare-datatypes ((V!11715 0))(
  ( (V!11716 (val!4071 Int)) )
))
(declare-fun minValue!1150 () V!11715)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((ValueCell!3683 0))(
  ( (ValueCellFull!3683 (v!6261 V!11715)) (EmptyCell!3683) )
))
(declare-datatypes ((array!19643 0))(
  ( (array!19644 (arr!9312 (Array (_ BitVec 32) ValueCell!3683)) (size!9664 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19643)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11715)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!19 (array!19641 array!19643 (_ BitVec 32) (_ BitVec 32) V!11715 V!11715 (_ BitVec 64) (_ BitVec 32)) Unit!10997)

(assert (=> b!356884 (= lt!165955 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!19 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 from!1805))))

(declare-fun res!198209 () Bool)

(assert (=> start!35608 (=> (not res!198209) (not e!218584))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35608 (= res!198209 (validMask!0 mask!1842))))

(assert (=> start!35608 e!218584))

(declare-fun tp_is_empty!8053 () Bool)

(assert (=> start!35608 tp_is_empty!8053))

(assert (=> start!35608 true))

(declare-fun array_inv!6854 (array!19641) Bool)

(assert (=> start!35608 (array_inv!6854 _keys!1456)))

(declare-fun e!218585 () Bool)

(declare-fun array_inv!6855 (array!19643) Bool)

(assert (=> start!35608 (and (array_inv!6855 _values!1208) e!218585)))

(declare-fun mapIsEmpty!13587 () Bool)

(declare-fun mapRes!13587 () Bool)

(assert (=> mapIsEmpty!13587 mapRes!13587))

(declare-fun b!356885 () Bool)

(declare-fun e!218581 () Bool)

(assert (=> b!356885 (= e!218581 tp_is_empty!8053)))

(declare-fun b!356886 () Bool)

(declare-fun res!198208 () Bool)

(assert (=> b!356886 (=> (not res!198208) (not e!218584))))

(declare-datatypes ((List!5404 0))(
  ( (Nil!5401) (Cons!5400 (h!6256 (_ BitVec 64)) (t!10562 List!5404)) )
))
(declare-fun arrayNoDuplicates!0 (array!19641 (_ BitVec 32) List!5404) Bool)

(assert (=> b!356886 (= res!198208 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5401))))

(declare-fun b!356887 () Bool)

(declare-fun e!218583 () Bool)

(assert (=> b!356887 (= e!218585 (and e!218583 mapRes!13587))))

(declare-fun condMapEmpty!13587 () Bool)

(declare-fun mapDefault!13587 () ValueCell!3683)

