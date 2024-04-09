; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98900 () Bool)

(assert start!98900)

(declare-fun b_free!24469 () Bool)

(declare-fun b_next!24469 () Bool)

(assert (=> start!98900 (= b_free!24469 (not b_next!24469))))

(declare-fun tp!86118 () Bool)

(declare-fun b_and!39801 () Bool)

(assert (=> start!98900 (= tp!86118 b_and!39801)))

(declare-fun b!1156522 () Bool)

(declare-fun e!657746 () Bool)

(declare-fun tp_is_empty!28999 () Bool)

(assert (=> b!1156522 (= e!657746 tp_is_empty!28999)))

(declare-fun b!1156523 () Bool)

(declare-fun res!768269 () Bool)

(declare-fun e!657751 () Bool)

(assert (=> b!1156523 (=> (not res!768269) (not e!657751))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1156523 (= res!768269 (validKeyInArray!0 k!934))))

(declare-fun b!1156524 () Bool)

(declare-fun e!657760 () Bool)

(declare-fun e!657762 () Bool)

(declare-fun mapRes!45323 () Bool)

(assert (=> b!1156524 (= e!657760 (and e!657762 mapRes!45323))))

(declare-fun condMapEmpty!45323 () Bool)

(declare-datatypes ((V!43793 0))(
  ( (V!43794 (val!14556 Int)) )
))
(declare-datatypes ((ValueCell!13790 0))(
  ( (ValueCellFull!13790 (v!17194 V!43793)) (EmptyCell!13790) )
))
(declare-datatypes ((array!74792 0))(
  ( (array!74793 (arr!36043 (Array (_ BitVec 32) ValueCell!13790)) (size!36580 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74792)

(declare-fun mapDefault!45323 () ValueCell!13790)

