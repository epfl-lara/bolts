; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35606 () Bool)

(assert start!35606)

(declare-fun b!356851 () Bool)

(declare-fun e!218567 () Bool)

(declare-fun tp_is_empty!8051 () Bool)

(assert (=> b!356851 (= e!218567 tp_is_empty!8051)))

(declare-fun b!356852 () Bool)

(declare-fun res!198185 () Bool)

(declare-fun e!218570 () Bool)

(assert (=> b!356852 (=> (not res!198185) (not e!218570))))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!356852 (= res!198185 (validKeyInArray!0 k!1077))))

(declare-fun b!356853 () Bool)

(declare-fun res!198184 () Bool)

(assert (=> b!356853 (=> (not res!198184) (not e!218570))))

(declare-datatypes ((array!19637 0))(
  ( (array!19638 (arr!9309 (Array (_ BitVec 32) (_ BitVec 64))) (size!9661 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19637)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19637 (_ BitVec 32)) Bool)

(assert (=> b!356853 (= res!198184 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!356854 () Bool)

(declare-fun e!218569 () Bool)

(assert (=> b!356854 (= e!218569 tp_is_empty!8051)))

(declare-fun b!356855 () Bool)

(declare-fun res!198190 () Bool)

(assert (=> b!356855 (=> (not res!198190) (not e!218570))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!19637 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!356855 (= res!198190 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun mapIsEmpty!13584 () Bool)

(declare-fun mapRes!13584 () Bool)

(assert (=> mapIsEmpty!13584 mapRes!13584))

(declare-fun b!356856 () Bool)

(declare-fun res!198187 () Bool)

(assert (=> b!356856 (=> (not res!198187) (not e!218570))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-datatypes ((V!11711 0))(
  ( (V!11712 (val!4070 Int)) )
))
(declare-datatypes ((ValueCell!3682 0))(
  ( (ValueCellFull!3682 (v!6260 V!11711)) (EmptyCell!3682) )
))
(declare-datatypes ((array!19639 0))(
  ( (array!19640 (arr!9310 (Array (_ BitVec 32) ValueCell!3682)) (size!9662 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19639)

(assert (=> b!356856 (= res!198187 (and (= (size!9662 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9661 _keys!1456) (size!9662 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!356857 () Bool)

(declare-fun res!198183 () Bool)

(assert (=> b!356857 (=> (not res!198183) (not e!218570))))

(assert (=> b!356857 (= res!198183 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9661 _keys!1456))))))

(declare-fun b!356858 () Bool)

(declare-fun e!218568 () Bool)

(assert (=> b!356858 (= e!218568 (and e!218569 mapRes!13584))))

(declare-fun condMapEmpty!13584 () Bool)

(declare-fun mapDefault!13584 () ValueCell!3682)

