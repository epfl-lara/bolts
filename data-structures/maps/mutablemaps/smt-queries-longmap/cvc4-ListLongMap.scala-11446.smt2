; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133510 () Bool)

(assert start!133510)

(declare-fun res!1067066 () Bool)

(declare-fun e!869492 () Bool)

(assert (=> start!133510 (=> (not res!1067066) (not e!869492))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133510 (= res!1067066 (validMask!0 mask!947))))

(assert (=> start!133510 e!869492))

(assert (=> start!133510 true))

(declare-datatypes ((V!59621 0))(
  ( (V!59622 (val!19364 Int)) )
))
(declare-datatypes ((ValueCell!18250 0))(
  ( (ValueCellFull!18250 (v!22113 V!59621)) (EmptyCell!18250) )
))
(declare-datatypes ((array!103797 0))(
  ( (array!103798 (arr!50086 (Array (_ BitVec 32) ValueCell!18250)) (size!50637 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103797)

(declare-fun e!869490 () Bool)

(declare-fun array_inv!38857 (array!103797) Bool)

(assert (=> start!133510 (and (array_inv!38857 _values!487) e!869490)))

(declare-datatypes ((array!103799 0))(
  ( (array!103800 (arr!50087 (Array (_ BitVec 32) (_ BitVec 64))) (size!50638 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103799)

(declare-fun array_inv!38858 (array!103799) Bool)

(assert (=> start!133510 (array_inv!38858 _keys!637)))

(declare-fun b!1560341 () Bool)

(declare-fun res!1067064 () Bool)

(assert (=> b!1560341 (=> (not res!1067064) (not e!869492))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1560341 (= res!1067064 (and (= (size!50637 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50638 _keys!637) (size!50637 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!59217 () Bool)

(declare-fun mapRes!59217 () Bool)

(assert (=> mapIsEmpty!59217 mapRes!59217))

(declare-fun b!1560342 () Bool)

(declare-fun e!869489 () Bool)

(assert (=> b!1560342 (= e!869490 (and e!869489 mapRes!59217))))

(declare-fun condMapEmpty!59217 () Bool)

(declare-fun mapDefault!59217 () ValueCell!18250)

