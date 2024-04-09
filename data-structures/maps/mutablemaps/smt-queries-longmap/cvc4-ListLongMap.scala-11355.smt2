; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132070 () Bool)

(assert start!132070)

(declare-fun b_free!31751 () Bool)

(declare-fun b_next!31751 () Bool)

(assert (=> start!132070 (= b_free!31751 (not b_next!31751))))

(declare-fun tp!111506 () Bool)

(declare-fun b_and!51171 () Bool)

(assert (=> start!132070 (= tp!111506 b_and!51171)))

(declare-fun b!1547338 () Bool)

(declare-fun res!1060706 () Bool)

(declare-fun e!861320 () Bool)

(assert (=> b!1547338 (=> (not res!1060706) (not e!861320))))

(declare-datatypes ((array!103219 0))(
  ( (array!103220 (arr!49807 (Array (_ BitVec 32) (_ BitVec 64))) (size!50358 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103219)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((V!59145 0))(
  ( (V!59146 (val!19091 Int)) )
))
(declare-datatypes ((ValueCell!18103 0))(
  ( (ValueCellFull!18103 (v!21889 V!59145)) (EmptyCell!18103) )
))
(declare-datatypes ((array!103221 0))(
  ( (array!103222 (arr!49808 (Array (_ BitVec 32) ValueCell!18103)) (size!50359 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103221)

(assert (=> b!1547338 (= res!1060706 (and (= (size!50359 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50358 _keys!618) (size!50359 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun bm!69854 () Bool)

(declare-datatypes ((tuple2!24706 0))(
  ( (tuple2!24707 (_1!12363 (_ BitVec 64)) (_2!12363 V!59145)) )
))
(declare-datatypes ((List!36215 0))(
  ( (Nil!36212) (Cons!36211 (h!37657 tuple2!24706) (t!50916 List!36215)) )
))
(declare-datatypes ((ListLongMap!22327 0))(
  ( (ListLongMap!22328 (toList!11179 List!36215)) )
))
(declare-fun call!69859 () ListLongMap!22327)

(declare-fun call!69860 () ListLongMap!22327)

(assert (=> bm!69854 (= call!69859 call!69860)))

(declare-fun res!1060704 () Bool)

(assert (=> start!132070 (=> (not res!1060704) (not e!861320))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132070 (= res!1060704 (validMask!0 mask!926))))

(assert (=> start!132070 e!861320))

(declare-fun array_inv!38661 (array!103219) Bool)

(assert (=> start!132070 (array_inv!38661 _keys!618)))

(declare-fun tp_is_empty!38027 () Bool)

(assert (=> start!132070 tp_is_empty!38027))

(assert (=> start!132070 true))

(assert (=> start!132070 tp!111506))

(declare-fun e!861321 () Bool)

(declare-fun array_inv!38662 (array!103221) Bool)

(assert (=> start!132070 (and (array_inv!38662 _values!470) e!861321)))

(declare-fun b!1547339 () Bool)

(declare-fun res!1060703 () Bool)

(assert (=> b!1547339 (=> (not res!1060703) (not e!861320))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103219 (_ BitVec 32)) Bool)

(assert (=> b!1547339 (= res!1060703 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1547340 () Bool)

(declare-fun e!861322 () Bool)

(declare-fun mapRes!58744 () Bool)

(assert (=> b!1547340 (= e!861321 (and e!861322 mapRes!58744))))

(declare-fun condMapEmpty!58744 () Bool)

(declare-fun mapDefault!58744 () ValueCell!18103)

