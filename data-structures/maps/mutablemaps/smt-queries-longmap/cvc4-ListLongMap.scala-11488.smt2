; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133762 () Bool)

(assert start!133762)

(declare-fun b_free!32093 () Bool)

(declare-fun b_next!32093 () Bool)

(assert (=> start!133762 (= b_free!32093 (not b_next!32093))))

(declare-fun tp!113484 () Bool)

(declare-fun b_and!51673 () Bool)

(assert (=> start!133762 (= tp!113484 b_and!51673)))

(declare-fun res!1069014 () Bool)

(declare-fun e!871444 () Bool)

(assert (=> start!133762 (=> (not res!1069014) (not e!871444))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133762 (= res!1069014 (validMask!0 mask!947))))

(assert (=> start!133762 e!871444))

(assert (=> start!133762 tp!113484))

(declare-fun tp_is_empty!38813 () Bool)

(assert (=> start!133762 tp_is_empty!38813))

(assert (=> start!133762 true))

(declare-datatypes ((array!104287 0))(
  ( (array!104288 (arr!50331 (Array (_ BitVec 32) (_ BitVec 64))) (size!50882 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104287)

(declare-fun array_inv!39043 (array!104287) Bool)

(assert (=> start!133762 (array_inv!39043 _keys!637)))

(declare-datatypes ((V!59957 0))(
  ( (V!59958 (val!19490 Int)) )
))
(declare-datatypes ((ValueCell!18376 0))(
  ( (ValueCellFull!18376 (v!22239 V!59957)) (EmptyCell!18376) )
))
(declare-datatypes ((array!104289 0))(
  ( (array!104290 (arr!50332 (Array (_ BitVec 32) ValueCell!18376)) (size!50883 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104289)

(declare-fun e!871445 () Bool)

(declare-fun array_inv!39044 (array!104289) Bool)

(assert (=> start!133762 (and (array_inv!39044 _values!487) e!871445)))

(declare-fun b!1563538 () Bool)

(declare-fun res!1069017 () Bool)

(assert (=> b!1563538 (=> (not res!1069017) (not e!871444))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1563538 (= res!1069017 (and (= (size!50883 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50882 _keys!637) (size!50883 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1563539 () Bool)

(declare-fun res!1069018 () Bool)

(assert (=> b!1563539 (=> (not res!1069018) (not e!871444))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1563539 (= res!1069018 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50882 _keys!637)) (bvslt from!782 (size!50882 _keys!637))))))

(declare-fun b!1563540 () Bool)

(declare-fun res!1069016 () Bool)

(assert (=> b!1563540 (=> (not res!1069016) (not e!871444))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1563540 (= res!1069016 (not (validKeyInArray!0 (select (arr!50331 _keys!637) from!782))))))

(declare-fun b!1563541 () Bool)

(declare-fun e!871440 () Bool)

(declare-fun mapRes!59595 () Bool)

(assert (=> b!1563541 (= e!871445 (and e!871440 mapRes!59595))))

(declare-fun condMapEmpty!59595 () Bool)

(declare-fun mapDefault!59595 () ValueCell!18376)

