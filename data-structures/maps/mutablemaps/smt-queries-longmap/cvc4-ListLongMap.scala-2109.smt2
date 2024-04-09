; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35834 () Bool)

(assert start!35834)

(declare-fun b!359749 () Bool)

(declare-fun res!200060 () Bool)

(declare-fun e!220361 () Bool)

(assert (=> b!359749 (=> (not res!200060) (not e!220361))))

(declare-datatypes ((array!20079 0))(
  ( (array!20080 (arr!9530 (Array (_ BitVec 32) (_ BitVec 64))) (size!9882 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20079)

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!20079 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!359749 (= res!200060 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun b!359750 () Bool)

(declare-fun e!220358 () Bool)

(declare-fun tp_is_empty!8279 () Bool)

(assert (=> b!359750 (= e!220358 tp_is_empty!8279)))

(declare-fun b!359751 () Bool)

(declare-fun res!200056 () Bool)

(assert (=> b!359751 (=> (not res!200056) (not e!220361))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((V!12015 0))(
  ( (V!12016 (val!4184 Int)) )
))
(declare-datatypes ((ValueCell!3796 0))(
  ( (ValueCellFull!3796 (v!6374 V!12015)) (EmptyCell!3796) )
))
(declare-datatypes ((array!20081 0))(
  ( (array!20082 (arr!9531 (Array (_ BitVec 32) ValueCell!3796)) (size!9883 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20081)

(assert (=> b!359751 (= res!200056 (and (= (size!9883 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9882 _keys!1456) (size!9883 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!359752 () Bool)

(assert (=> b!359752 (= e!220361 (not true))))

(assert (=> b!359752 (arrayContainsKey!0 _keys!1456 k!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-fun minValue!1150 () V!12015)

(declare-datatypes ((Unit!11061 0))(
  ( (Unit!11062) )
))
(declare-fun lt!166366 () Unit!11061)

(declare-fun zeroValue!1150 () V!12015)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!47 (array!20079 array!20081 (_ BitVec 32) (_ BitVec 32) V!12015 V!12015 (_ BitVec 64) (_ BitVec 32)) Unit!11061)

(assert (=> b!359752 (= lt!166366 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!47 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 from!1805))))

(declare-fun b!359753 () Bool)

(declare-fun res!200057 () Bool)

(assert (=> b!359753 (=> (not res!200057) (not e!220361))))

(declare-datatypes ((List!5506 0))(
  ( (Nil!5503) (Cons!5502 (h!6358 (_ BitVec 64)) (t!10664 List!5506)) )
))
(declare-fun arrayNoDuplicates!0 (array!20079 (_ BitVec 32) List!5506) Bool)

(assert (=> b!359753 (= res!200057 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5503))))

(declare-fun b!359754 () Bool)

(declare-fun e!220359 () Bool)

(assert (=> b!359754 (= e!220359 tp_is_empty!8279)))

(declare-fun b!359755 () Bool)

(declare-fun e!220357 () Bool)

(declare-fun mapRes!13926 () Bool)

(assert (=> b!359755 (= e!220357 (and e!220359 mapRes!13926))))

(declare-fun condMapEmpty!13926 () Bool)

(declare-fun mapDefault!13926 () ValueCell!3796)

