; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35594 () Bool)

(assert start!35594)

(declare-fun b!356653 () Bool)

(declare-fun res!198044 () Bool)

(declare-fun e!218478 () Bool)

(assert (=> b!356653 (=> (not res!198044) (not e!218478))))

(declare-datatypes ((array!19615 0))(
  ( (array!19616 (arr!9298 (Array (_ BitVec 32) (_ BitVec 64))) (size!9650 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19615)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19615 (_ BitVec 32)) Bool)

(assert (=> b!356653 (= res!198044 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!356654 () Bool)

(declare-fun res!198040 () Bool)

(assert (=> b!356654 (=> (not res!198040) (not e!218478))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k!1077 () (_ BitVec 64))

(assert (=> b!356654 (= res!198040 (not (= (select (arr!9298 _keys!1456) from!1805) k!1077)))))

(declare-fun b!356655 () Bool)

(assert (=> b!356655 (= e!218478 (not true))))

(declare-fun arrayContainsKey!0 (array!19615 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!356655 (arrayContainsKey!0 _keys!1456 k!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-datatypes ((V!11695 0))(
  ( (V!11696 (val!4064 Int)) )
))
(declare-datatypes ((ValueCell!3676 0))(
  ( (ValueCellFull!3676 (v!6254 V!11695)) (EmptyCell!3676) )
))
(declare-datatypes ((array!19617 0))(
  ( (array!19618 (arr!9299 (Array (_ BitVec 32) ValueCell!3676)) (size!9651 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19617)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11695)

(declare-fun minValue!1150 () V!11695)

(declare-datatypes ((Unit!10989 0))(
  ( (Unit!10990) )
))
(declare-fun lt!165934 () Unit!10989)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!15 (array!19615 array!19617 (_ BitVec 32) (_ BitVec 32) V!11695 V!11695 (_ BitVec 64) (_ BitVec 32)) Unit!10989)

(assert (=> b!356655 (= lt!165934 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!15 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 from!1805))))

(declare-fun b!356656 () Bool)

(declare-fun res!198042 () Bool)

(assert (=> b!356656 (=> (not res!198042) (not e!218478))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!356656 (= res!198042 (validKeyInArray!0 k!1077))))

(declare-fun b!356657 () Bool)

(declare-fun res!198041 () Bool)

(assert (=> b!356657 (=> (not res!198041) (not e!218478))))

(declare-datatypes ((List!5400 0))(
  ( (Nil!5397) (Cons!5396 (h!6252 (_ BitVec 64)) (t!10558 List!5400)) )
))
(declare-fun arrayNoDuplicates!0 (array!19615 (_ BitVec 32) List!5400) Bool)

(assert (=> b!356657 (= res!198041 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5397))))

(declare-fun mapNonEmpty!13566 () Bool)

(declare-fun mapRes!13566 () Bool)

(declare-fun tp!27543 () Bool)

(declare-fun e!218476 () Bool)

(assert (=> mapNonEmpty!13566 (= mapRes!13566 (and tp!27543 e!218476))))

(declare-fun mapRest!13566 () (Array (_ BitVec 32) ValueCell!3676))

(declare-fun mapValue!13566 () ValueCell!3676)

(declare-fun mapKey!13566 () (_ BitVec 32))

(assert (=> mapNonEmpty!13566 (= (arr!9299 _values!1208) (store mapRest!13566 mapKey!13566 mapValue!13566))))

(declare-fun b!356658 () Bool)

(declare-fun e!218477 () Bool)

(declare-fun tp_is_empty!8039 () Bool)

(assert (=> b!356658 (= e!218477 tp_is_empty!8039)))

(declare-fun b!356659 () Bool)

(declare-fun e!218480 () Bool)

(assert (=> b!356659 (= e!218480 (and e!218477 mapRes!13566))))

(declare-fun condMapEmpty!13566 () Bool)

(declare-fun mapDefault!13566 () ValueCell!3676)

