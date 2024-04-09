; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133536 () Bool)

(assert start!133536)

(declare-fun res!1067183 () Bool)

(declare-fun e!869683 () Bool)

(assert (=> start!133536 (=> (not res!1067183) (not e!869683))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133536 (= res!1067183 (validMask!0 mask!947))))

(assert (=> start!133536 e!869683))

(assert (=> start!133536 true))

(declare-datatypes ((V!59657 0))(
  ( (V!59658 (val!19377 Int)) )
))
(declare-datatypes ((ValueCell!18263 0))(
  ( (ValueCellFull!18263 (v!22126 V!59657)) (EmptyCell!18263) )
))
(declare-datatypes ((array!103847 0))(
  ( (array!103848 (arr!50111 (Array (_ BitVec 32) ValueCell!18263)) (size!50662 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103847)

(declare-fun e!869684 () Bool)

(declare-fun array_inv!38877 (array!103847) Bool)

(assert (=> start!133536 (and (array_inv!38877 _values!487) e!869684)))

(declare-datatypes ((array!103849 0))(
  ( (array!103850 (arr!50112 (Array (_ BitVec 32) (_ BitVec 64))) (size!50663 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103849)

(declare-fun array_inv!38878 (array!103849) Bool)

(assert (=> start!133536 (array_inv!38878 _keys!637)))

(declare-fun b!1560575 () Bool)

(declare-fun res!1067181 () Bool)

(assert (=> b!1560575 (=> (not res!1067181) (not e!869683))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1560575 (= res!1067181 (and (= (size!50662 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50663 _keys!637) (size!50662 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!59256 () Bool)

(declare-fun mapRes!59256 () Bool)

(declare-fun tp!112912 () Bool)

(declare-fun e!869686 () Bool)

(assert (=> mapNonEmpty!59256 (= mapRes!59256 (and tp!112912 e!869686))))

(declare-fun mapValue!59256 () ValueCell!18263)

(declare-fun mapRest!59256 () (Array (_ BitVec 32) ValueCell!18263))

(declare-fun mapKey!59256 () (_ BitVec 32))

(assert (=> mapNonEmpty!59256 (= (arr!50111 _values!487) (store mapRest!59256 mapKey!59256 mapValue!59256))))

(declare-fun b!1560576 () Bool)

(declare-fun e!869685 () Bool)

(declare-fun tp_is_empty!38587 () Bool)

(assert (=> b!1560576 (= e!869685 tp_is_empty!38587)))

(declare-fun b!1560577 () Bool)

(assert (=> b!1560577 (= e!869683 false)))

(declare-fun lt!670959 () Bool)

(declare-datatypes ((List!36555 0))(
  ( (Nil!36552) (Cons!36551 (h!37998 (_ BitVec 64)) (t!51295 List!36555)) )
))
(declare-fun arrayNoDuplicates!0 (array!103849 (_ BitVec 32) List!36555) Bool)

(assert (=> b!1560577 (= lt!670959 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36552))))

(declare-fun b!1560578 () Bool)

(declare-fun res!1067182 () Bool)

(assert (=> b!1560578 (=> (not res!1067182) (not e!869683))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103849 (_ BitVec 32)) Bool)

(assert (=> b!1560578 (= res!1067182 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1560579 () Bool)

(assert (=> b!1560579 (= e!869686 tp_is_empty!38587)))

(declare-fun mapIsEmpty!59256 () Bool)

(assert (=> mapIsEmpty!59256 mapRes!59256))

(declare-fun b!1560580 () Bool)

(assert (=> b!1560580 (= e!869684 (and e!869685 mapRes!59256))))

(declare-fun condMapEmpty!59256 () Bool)

(declare-fun mapDefault!59256 () ValueCell!18263)

