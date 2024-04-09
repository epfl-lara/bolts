; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133492 () Bool)

(assert start!133492)

(declare-fun b!1560149 () Bool)

(declare-fun res!1066957 () Bool)

(declare-fun e!869356 () Bool)

(assert (=> b!1560149 (=> (not res!1066957) (not e!869356))))

(declare-datatypes ((array!103763 0))(
  ( (array!103764 (arr!50069 (Array (_ BitVec 32) (_ BitVec 64))) (size!50620 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103763)

(declare-datatypes ((List!36535 0))(
  ( (Nil!36532) (Cons!36531 (h!37978 (_ BitVec 64)) (t!51275 List!36535)) )
))
(declare-fun arrayNoDuplicates!0 (array!103763 (_ BitVec 32) List!36535) Bool)

(assert (=> b!1560149 (= res!1066957 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36532))))

(declare-fun b!1560150 () Bool)

(declare-fun res!1066955 () Bool)

(assert (=> b!1560150 (=> (not res!1066955) (not e!869356))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103763 (_ BitVec 32)) Bool)

(assert (=> b!1560150 (= res!1066955 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1560151 () Bool)

(declare-fun e!869353 () Bool)

(declare-fun tp_is_empty!38543 () Bool)

(assert (=> b!1560151 (= e!869353 tp_is_empty!38543)))

(declare-fun b!1560152 () Bool)

(declare-fun e!869355 () Bool)

(declare-fun mapRes!59190 () Bool)

(assert (=> b!1560152 (= e!869355 (and e!869353 mapRes!59190))))

(declare-fun condMapEmpty!59190 () Bool)

(declare-datatypes ((V!59597 0))(
  ( (V!59598 (val!19355 Int)) )
))
(declare-datatypes ((ValueCell!18241 0))(
  ( (ValueCellFull!18241 (v!22104 V!59597)) (EmptyCell!18241) )
))
(declare-datatypes ((array!103765 0))(
  ( (array!103766 (arr!50070 (Array (_ BitVec 32) ValueCell!18241)) (size!50621 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103765)

(declare-fun mapDefault!59190 () ValueCell!18241)

