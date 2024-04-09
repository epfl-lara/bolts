; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35854 () Bool)

(assert start!35854)

(declare-fun mapNonEmpty!13956 () Bool)

(declare-fun mapRes!13956 () Bool)

(declare-fun tp!28023 () Bool)

(declare-fun e!220508 () Bool)

(assert (=> mapNonEmpty!13956 (= mapRes!13956 (and tp!28023 e!220508))))

(declare-fun mapKey!13956 () (_ BitVec 32))

(declare-datatypes ((V!12043 0))(
  ( (V!12044 (val!4194 Int)) )
))
(declare-datatypes ((ValueCell!3806 0))(
  ( (ValueCellFull!3806 (v!6384 V!12043)) (EmptyCell!3806) )
))
(declare-fun mapValue!13956 () ValueCell!3806)

(declare-datatypes ((array!20119 0))(
  ( (array!20120 (arr!9550 (Array (_ BitVec 32) ValueCell!3806)) (size!9902 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20119)

(declare-fun mapRest!13956 () (Array (_ BitVec 32) ValueCell!3806))

(assert (=> mapNonEmpty!13956 (= (arr!9550 _values!1208) (store mapRest!13956 mapKey!13956 mapValue!13956))))

(declare-fun b!360080 () Bool)

(declare-fun res!200295 () Bool)

(declare-fun e!220507 () Bool)

(assert (=> b!360080 (=> (not res!200295) (not e!220507))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((array!20121 0))(
  ( (array!20122 (arr!9551 (Array (_ BitVec 32) (_ BitVec 64))) (size!9903 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20121)

(assert (=> b!360080 (= res!200295 (and (= (size!9902 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9903 _keys!1456) (size!9902 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!360081 () Bool)

(assert (=> b!360081 (= e!220507 (not true))))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!20121 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!360081 (arrayContainsKey!0 _keys!1456 k!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-fun minValue!1150 () V!12043)

(declare-datatypes ((Unit!11071 0))(
  ( (Unit!11072) )
))
(declare-fun lt!166396 () Unit!11071)

(declare-fun zeroValue!1150 () V!12043)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!52 (array!20121 array!20119 (_ BitVec 32) (_ BitVec 32) V!12043 V!12043 (_ BitVec 64) (_ BitVec 32)) Unit!11071)

(assert (=> b!360081 (= lt!166396 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!52 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 from!1805))))

(declare-fun b!360082 () Bool)

(declare-fun res!200297 () Bool)

(assert (=> b!360082 (=> (not res!200297) (not e!220507))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!360082 (= res!200297 (validKeyInArray!0 k!1077))))

(declare-fun b!360083 () Bool)

(declare-fun res!200300 () Bool)

(assert (=> b!360083 (=> (not res!200300) (not e!220507))))

(assert (=> b!360083 (= res!200300 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun b!360084 () Bool)

(declare-fun res!200299 () Bool)

(assert (=> b!360084 (=> (not res!200299) (not e!220507))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20121 (_ BitVec 32)) Bool)

(assert (=> b!360084 (= res!200299 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!360085 () Bool)

(declare-fun res!200302 () Bool)

(assert (=> b!360085 (=> (not res!200302) (not e!220507))))

(declare-datatypes ((List!5513 0))(
  ( (Nil!5510) (Cons!5509 (h!6365 (_ BitVec 64)) (t!10671 List!5513)) )
))
(declare-fun arrayNoDuplicates!0 (array!20121 (_ BitVec 32) List!5513) Bool)

(assert (=> b!360085 (= res!200302 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5510))))

(declare-fun b!360086 () Bool)

(declare-fun res!200301 () Bool)

(assert (=> b!360086 (=> (not res!200301) (not e!220507))))

(assert (=> b!360086 (= res!200301 (not (= (select (arr!9551 _keys!1456) from!1805) k!1077)))))

(declare-fun b!360087 () Bool)

(declare-fun res!200296 () Bool)

(assert (=> b!360087 (=> (not res!200296) (not e!220507))))

(assert (=> b!360087 (= res!200296 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9903 _keys!1456))))))

(declare-fun b!360088 () Bool)

(declare-fun e!220511 () Bool)

(declare-fun e!220509 () Bool)

(assert (=> b!360088 (= e!220511 (and e!220509 mapRes!13956))))

(declare-fun condMapEmpty!13956 () Bool)

(declare-fun mapDefault!13956 () ValueCell!3806)

