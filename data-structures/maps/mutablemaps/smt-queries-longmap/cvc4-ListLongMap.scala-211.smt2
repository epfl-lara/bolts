; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3950 () Bool)

(assert start!3950)

(declare-fun b_free!857 () Bool)

(declare-fun b_next!857 () Bool)

(assert (=> start!3950 (= b_free!857 (not b_next!857))))

(declare-fun tp!3991 () Bool)

(declare-fun b_and!1669 () Bool)

(assert (=> start!3950 (= tp!3991 b_and!1669)))

(declare-fun b!28265 () Bool)

(declare-fun res!16802 () Bool)

(declare-fun e!18293 () Bool)

(assert (=> b!28265 (=> (not res!16802) (not e!18293))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!28265 (= res!16802 (validKeyInArray!0 k!1304))))

(declare-fun b!28266 () Bool)

(assert (=> b!28266 (= e!18293 false)))

(declare-fun lt!10770 () (_ BitVec 32))

(declare-datatypes ((array!1647 0))(
  ( (array!1648 (arr!777 (Array (_ BitVec 32) (_ BitVec 64))) (size!878 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1647)

(declare-fun arrayScanForKey!0 (array!1647 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!28266 (= lt!10770 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!28267 () Bool)

(declare-fun e!18295 () Bool)

(declare-fun tp_is_empty!1211 () Bool)

(assert (=> b!28267 (= e!18295 tp_is_empty!1211)))

(declare-fun b!28268 () Bool)

(declare-fun res!16799 () Bool)

(assert (=> b!28268 (=> (not res!16799) (not e!18293))))

(declare-datatypes ((V!1439 0))(
  ( (V!1440 (val!632 Int)) )
))
(declare-datatypes ((ValueCell!406 0))(
  ( (ValueCellFull!406 (v!1721 V!1439)) (EmptyCell!406) )
))
(declare-datatypes ((array!1649 0))(
  ( (array!1650 (arr!778 (Array (_ BitVec 32) ValueCell!406)) (size!879 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1649)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!28268 (= res!16799 (and (= (size!879 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!878 _keys!1833) (size!879 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!28269 () Bool)

(declare-fun e!18294 () Bool)

(declare-fun e!18291 () Bool)

(declare-fun mapRes!1345 () Bool)

(assert (=> b!28269 (= e!18294 (and e!18291 mapRes!1345))))

(declare-fun condMapEmpty!1345 () Bool)

(declare-fun mapDefault!1345 () ValueCell!406)

