; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99156 () Bool)

(assert start!99156)

(declare-fun b_free!24725 () Bool)

(declare-fun b_next!24725 () Bool)

(assert (=> start!99156 (= b_free!24725 (not b_next!24725))))

(declare-fun tp!86886 () Bool)

(declare-fun b_and!40313 () Bool)

(assert (=> start!99156 (= tp!86886 b_and!40313)))

(declare-fun b!1166027 () Bool)

(declare-fun e!662868 () Bool)

(declare-fun e!662867 () Bool)

(declare-fun mapRes!45707 () Bool)

(assert (=> b!1166027 (= e!662868 (and e!662867 mapRes!45707))))

(declare-fun condMapEmpty!45707 () Bool)

(declare-datatypes ((V!44133 0))(
  ( (V!44134 (val!14684 Int)) )
))
(declare-datatypes ((ValueCell!13918 0))(
  ( (ValueCellFull!13918 (v!17322 V!44133)) (EmptyCell!13918) )
))
(declare-datatypes ((array!75292 0))(
  ( (array!75293 (arr!36293 (Array (_ BitVec 32) ValueCell!13918)) (size!36830 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75292)

(declare-fun mapDefault!45707 () ValueCell!13918)

