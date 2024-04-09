; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35830 () Bool)

(assert start!35830)

(declare-fun b!359683 () Bool)

(declare-fun res!200007 () Bool)

(declare-fun e!220330 () Bool)

(assert (=> b!359683 (=> (not res!200007) (not e!220330))))

(declare-datatypes ((array!20071 0))(
  ( (array!20072 (arr!9526 (Array (_ BitVec 32) (_ BitVec 64))) (size!9878 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20071)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20071 (_ BitVec 32)) Bool)

(assert (=> b!359683 (= res!200007 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!359684 () Bool)

(declare-fun res!200013 () Bool)

(assert (=> b!359684 (=> (not res!200013) (not e!220330))))

(declare-datatypes ((List!5504 0))(
  ( (Nil!5501) (Cons!5500 (h!6356 (_ BitVec 64)) (t!10662 List!5504)) )
))
(declare-fun arrayNoDuplicates!0 (array!20071 (_ BitVec 32) List!5504) Bool)

(assert (=> b!359684 (= res!200013 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5501))))

(declare-fun b!359685 () Bool)

(declare-fun e!220328 () Bool)

(declare-fun tp_is_empty!8275 () Bool)

(assert (=> b!359685 (= e!220328 tp_is_empty!8275)))

(declare-fun b!359686 () Bool)

(declare-fun res!200012 () Bool)

(assert (=> b!359686 (=> (not res!200012) (not e!220330))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k!1077 () (_ BitVec 64))

(assert (=> b!359686 (= res!200012 (not (= (select (arr!9526 _keys!1456) from!1805) k!1077)))))

(declare-fun b!359687 () Bool)

(declare-fun res!200011 () Bool)

(assert (=> b!359687 (=> (not res!200011) (not e!220330))))

(assert (=> b!359687 (= res!200011 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9878 _keys!1456))))))

(declare-fun mapNonEmpty!13920 () Bool)

(declare-fun mapRes!13920 () Bool)

(declare-fun tp!27987 () Bool)

(declare-fun e!220331 () Bool)

(assert (=> mapNonEmpty!13920 (= mapRes!13920 (and tp!27987 e!220331))))

(declare-datatypes ((V!12011 0))(
  ( (V!12012 (val!4182 Int)) )
))
(declare-datatypes ((ValueCell!3794 0))(
  ( (ValueCellFull!3794 (v!6372 V!12011)) (EmptyCell!3794) )
))
(declare-fun mapRest!13920 () (Array (_ BitVec 32) ValueCell!3794))

(declare-fun mapKey!13920 () (_ BitVec 32))

(declare-datatypes ((array!20073 0))(
  ( (array!20074 (arr!9527 (Array (_ BitVec 32) ValueCell!3794)) (size!9879 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20073)

(declare-fun mapValue!13920 () ValueCell!3794)

(assert (=> mapNonEmpty!13920 (= (arr!9527 _values!1208) (store mapRest!13920 mapKey!13920 mapValue!13920))))

(declare-fun b!359688 () Bool)

(assert (=> b!359688 (= e!220331 tp_is_empty!8275)))

(declare-fun mapIsEmpty!13920 () Bool)

(assert (=> mapIsEmpty!13920 mapRes!13920))

(declare-fun b!359689 () Bool)

(assert (=> b!359689 (= e!220330 (not true))))

(declare-fun arrayContainsKey!0 (array!20071 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!359689 (arrayContainsKey!0 _keys!1456 k!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-fun minValue!1150 () V!12011)

(declare-datatypes ((Unit!11057 0))(
  ( (Unit!11058) )
))
(declare-fun lt!166360 () Unit!11057)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!12011)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!45 (array!20071 array!20073 (_ BitVec 32) (_ BitVec 32) V!12011 V!12011 (_ BitVec 64) (_ BitVec 32)) Unit!11057)

(assert (=> b!359689 (= lt!166360 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!45 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 from!1805))))

(declare-fun b!359690 () Bool)

(declare-fun res!200008 () Bool)

(assert (=> b!359690 (=> (not res!200008) (not e!220330))))

(assert (=> b!359690 (= res!200008 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun res!200010 () Bool)

(assert (=> start!35830 (=> (not res!200010) (not e!220330))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35830 (= res!200010 (validMask!0 mask!1842))))

(assert (=> start!35830 e!220330))

(assert (=> start!35830 tp_is_empty!8275))

(assert (=> start!35830 true))

(declare-fun array_inv!7014 (array!20071) Bool)

(assert (=> start!35830 (array_inv!7014 _keys!1456)))

(declare-fun e!220327 () Bool)

(declare-fun array_inv!7015 (array!20073) Bool)

(assert (=> start!35830 (and (array_inv!7015 _values!1208) e!220327)))

(declare-fun b!359691 () Bool)

(declare-fun res!200014 () Bool)

(assert (=> b!359691 (=> (not res!200014) (not e!220330))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!359691 (= res!200014 (validKeyInArray!0 k!1077))))

(declare-fun b!359692 () Bool)

(assert (=> b!359692 (= e!220327 (and e!220328 mapRes!13920))))

(declare-fun condMapEmpty!13920 () Bool)

(declare-fun mapDefault!13920 () ValueCell!3794)

