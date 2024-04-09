; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133542 () Bool)

(assert start!133542)

(declare-fun res!1067209 () Bool)

(declare-fun e!869732 () Bool)

(assert (=> start!133542 (=> (not res!1067209) (not e!869732))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133542 (= res!1067209 (validMask!0 mask!947))))

(assert (=> start!133542 e!869732))

(assert (=> start!133542 true))

(declare-datatypes ((V!59665 0))(
  ( (V!59666 (val!19380 Int)) )
))
(declare-datatypes ((ValueCell!18266 0))(
  ( (ValueCellFull!18266 (v!22129 V!59665)) (EmptyCell!18266) )
))
(declare-datatypes ((array!103857 0))(
  ( (array!103858 (arr!50116 (Array (_ BitVec 32) ValueCell!18266)) (size!50667 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103857)

(declare-fun e!869728 () Bool)

(declare-fun array_inv!38881 (array!103857) Bool)

(assert (=> start!133542 (and (array_inv!38881 _values!487) e!869728)))

(declare-datatypes ((array!103859 0))(
  ( (array!103860 (arr!50117 (Array (_ BitVec 32) (_ BitVec 64))) (size!50668 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103859)

(declare-fun array_inv!38882 (array!103859) Bool)

(assert (=> start!133542 (array_inv!38882 _keys!637)))

(declare-fun mapNonEmpty!59265 () Bool)

(declare-fun mapRes!59265 () Bool)

(declare-fun tp!112921 () Bool)

(declare-fun e!869729 () Bool)

(assert (=> mapNonEmpty!59265 (= mapRes!59265 (and tp!112921 e!869729))))

(declare-fun mapRest!59265 () (Array (_ BitVec 32) ValueCell!18266))

(declare-fun mapKey!59265 () (_ BitVec 32))

(declare-fun mapValue!59265 () ValueCell!18266)

(assert (=> mapNonEmpty!59265 (= (arr!50116 _values!487) (store mapRest!59265 mapKey!59265 mapValue!59265))))

(declare-fun b!1560629 () Bool)

(declare-fun res!1067210 () Bool)

(assert (=> b!1560629 (=> (not res!1067210) (not e!869732))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103859 (_ BitVec 32)) Bool)

(assert (=> b!1560629 (= res!1067210 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1560630 () Bool)

(declare-fun e!869731 () Bool)

(assert (=> b!1560630 (= e!869728 (and e!869731 mapRes!59265))))

(declare-fun condMapEmpty!59265 () Bool)

(declare-fun mapDefault!59265 () ValueCell!18266)

