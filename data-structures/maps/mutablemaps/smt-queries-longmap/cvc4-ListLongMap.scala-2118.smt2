; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35904 () Bool)

(assert start!35904)

(declare-fun b!360683 () Bool)

(declare-fun res!200728 () Bool)

(declare-fun e!220799 () Bool)

(assert (=> b!360683 (=> (not res!200728) (not e!220799))))

(declare-datatypes ((array!20189 0))(
  ( (array!20190 (arr!9584 (Array (_ BitVec 32) (_ BitVec 64))) (size!9936 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20189)

(declare-datatypes ((List!5523 0))(
  ( (Nil!5520) (Cons!5519 (h!6375 (_ BitVec 64)) (t!10681 List!5523)) )
))
(declare-fun arrayNoDuplicates!0 (array!20189 (_ BitVec 32) List!5523) Bool)

(assert (=> b!360683 (= res!200728 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5520))))

(declare-fun b!360684 () Bool)

(declare-fun e!220800 () Bool)

(declare-fun tp_is_empty!8333 () Bool)

(assert (=> b!360684 (= e!220800 tp_is_empty!8333)))

(declare-fun b!360685 () Bool)

(declare-fun from!1805 () (_ BitVec 32))

(assert (=> b!360685 (= e!220799 (not (or (bvslt (bvadd #b00000000000000000000000000000001 from!1805) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1805) (size!9936 _keys!1456)) (bvslt (bvsub (size!9936 _keys!1456) (bvadd #b00000000000000000000000000000001 from!1805)) (bvsub (size!9936 _keys!1456) from!1805)))))))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!20189 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!360685 (arrayContainsKey!0 _keys!1456 k!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-datatypes ((V!12087 0))(
  ( (V!12088 (val!4211 Int)) )
))
(declare-fun minValue!1150 () V!12087)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((Unit!11091 0))(
  ( (Unit!11092) )
))
(declare-fun lt!166459 () Unit!11091)

(declare-datatypes ((ValueCell!3823 0))(
  ( (ValueCellFull!3823 (v!6401 V!12087)) (EmptyCell!3823) )
))
(declare-datatypes ((array!20191 0))(
  ( (array!20192 (arr!9585 (Array (_ BitVec 32) ValueCell!3823)) (size!9937 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20191)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!12087)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!62 (array!20189 array!20191 (_ BitVec 32) (_ BitVec 32) V!12087 V!12087 (_ BitVec 64) (_ BitVec 32)) Unit!11091)

(assert (=> b!360685 (= lt!166459 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!62 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 from!1805))))

(declare-fun b!360686 () Bool)

(declare-fun res!200731 () Bool)

(assert (=> b!360686 (=> (not res!200731) (not e!220799))))

(assert (=> b!360686 (= res!200731 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun mapNonEmpty!14010 () Bool)

(declare-fun mapRes!14010 () Bool)

(declare-fun tp!28077 () Bool)

(declare-fun e!220797 () Bool)

(assert (=> mapNonEmpty!14010 (= mapRes!14010 (and tp!28077 e!220797))))

(declare-fun mapKey!14010 () (_ BitVec 32))

(declare-fun mapRest!14010 () (Array (_ BitVec 32) ValueCell!3823))

(declare-fun mapValue!14010 () ValueCell!3823)

(assert (=> mapNonEmpty!14010 (= (arr!9585 _values!1208) (store mapRest!14010 mapKey!14010 mapValue!14010))))

(declare-fun b!360687 () Bool)

(declare-fun res!200733 () Bool)

(assert (=> b!360687 (=> (not res!200733) (not e!220799))))

(assert (=> b!360687 (= res!200733 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9936 _keys!1456))))))

(declare-fun res!200726 () Bool)

(assert (=> start!35904 (=> (not res!200726) (not e!220799))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35904 (= res!200726 (validMask!0 mask!1842))))

(assert (=> start!35904 e!220799))

(assert (=> start!35904 tp_is_empty!8333))

(assert (=> start!35904 true))

(declare-fun array_inv!7048 (array!20189) Bool)

(assert (=> start!35904 (array_inv!7048 _keys!1456)))

(declare-fun e!220798 () Bool)

(declare-fun array_inv!7049 (array!20191) Bool)

(assert (=> start!35904 (and (array_inv!7049 _values!1208) e!220798)))

(declare-fun mapIsEmpty!14010 () Bool)

(assert (=> mapIsEmpty!14010 mapRes!14010))

(declare-fun b!360688 () Bool)

(declare-fun res!200727 () Bool)

(assert (=> b!360688 (=> (not res!200727) (not e!220799))))

(assert (=> b!360688 (= res!200727 (not (= (select (arr!9584 _keys!1456) from!1805) k!1077)))))

(declare-fun b!360689 () Bool)

(declare-fun res!200732 () Bool)

(assert (=> b!360689 (=> (not res!200732) (not e!220799))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!360689 (= res!200732 (validKeyInArray!0 k!1077))))

(declare-fun b!360690 () Bool)

(assert (=> b!360690 (= e!220798 (and e!220800 mapRes!14010))))

(declare-fun condMapEmpty!14010 () Bool)

(declare-fun mapDefault!14010 () ValueCell!3823)

