; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35588 () Bool)

(assert start!35588)

(declare-fun b!356554 () Bool)

(declare-fun e!218433 () Bool)

(assert (=> b!356554 (= e!218433 (not true))))

(declare-datatypes ((array!19603 0))(
  ( (array!19604 (arr!9292 (Array (_ BitVec 32) (_ BitVec 64))) (size!9644 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19603)

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!19603 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!356554 (arrayContainsKey!0 _keys!1456 k!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-datatypes ((V!11687 0))(
  ( (V!11688 (val!4061 Int)) )
))
(declare-fun minValue!1150 () V!11687)

(declare-datatypes ((ValueCell!3673 0))(
  ( (ValueCellFull!3673 (v!6251 V!11687)) (EmptyCell!3673) )
))
(declare-datatypes ((array!19605 0))(
  ( (array!19606 (arr!9293 (Array (_ BitVec 32) ValueCell!3673)) (size!9645 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19605)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11687)

(declare-datatypes ((Unit!10983 0))(
  ( (Unit!10984) )
))
(declare-fun lt!165925 () Unit!10983)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!12 (array!19603 array!19605 (_ BitVec 32) (_ BitVec 32) V!11687 V!11687 (_ BitVec 64) (_ BitVec 32)) Unit!10983)

(assert (=> b!356554 (= lt!165925 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!12 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 from!1805))))

(declare-fun b!356555 () Bool)

(declare-fun res!197974 () Bool)

(assert (=> b!356555 (=> (not res!197974) (not e!218433))))

(declare-datatypes ((List!5397 0))(
  ( (Nil!5394) (Cons!5393 (h!6249 (_ BitVec 64)) (t!10555 List!5397)) )
))
(declare-fun arrayNoDuplicates!0 (array!19603 (_ BitVec 32) List!5397) Bool)

(assert (=> b!356555 (= res!197974 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5394))))

(declare-fun mapIsEmpty!13557 () Bool)

(declare-fun mapRes!13557 () Bool)

(assert (=> mapIsEmpty!13557 mapRes!13557))

(declare-fun b!356556 () Bool)

(declare-fun res!197972 () Bool)

(assert (=> b!356556 (=> (not res!197972) (not e!218433))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19603 (_ BitVec 32)) Bool)

(assert (=> b!356556 (= res!197972 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun res!197971 () Bool)

(assert (=> start!35588 (=> (not res!197971) (not e!218433))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35588 (= res!197971 (validMask!0 mask!1842))))

(assert (=> start!35588 e!218433))

(declare-fun tp_is_empty!8033 () Bool)

(assert (=> start!35588 tp_is_empty!8033))

(assert (=> start!35588 true))

(declare-fun array_inv!6842 (array!19603) Bool)

(assert (=> start!35588 (array_inv!6842 _keys!1456)))

(declare-fun e!218432 () Bool)

(declare-fun array_inv!6843 (array!19605) Bool)

(assert (=> start!35588 (and (array_inv!6843 _values!1208) e!218432)))

(declare-fun b!356557 () Bool)

(declare-fun e!218431 () Bool)

(assert (=> b!356557 (= e!218432 (and e!218431 mapRes!13557))))

(declare-fun condMapEmpty!13557 () Bool)

(declare-fun mapDefault!13557 () ValueCell!3673)

