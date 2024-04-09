; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134100 () Bool)

(assert start!134100)

(declare-fun b_free!32195 () Bool)

(declare-fun b_next!32195 () Bool)

(assert (=> start!134100 (= b_free!32195 (not b_next!32195))))

(declare-fun tp!113904 () Bool)

(declare-fun b_and!51849 () Bool)

(assert (=> start!134100 (= tp!113904 b_and!51849)))

(declare-fun b!1566756 () Bool)

(declare-fun e!873361 () Bool)

(declare-fun tp_is_empty!38975 () Bool)

(assert (=> b!1566756 (= e!873361 tp_is_empty!38975)))

(declare-fun res!1070906 () Bool)

(declare-fun e!873358 () Bool)

(assert (=> start!134100 (=> (not res!1070906) (not e!873358))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134100 (= res!1070906 (validMask!0 mask!947))))

(assert (=> start!134100 e!873358))

(assert (=> start!134100 tp!113904))

(assert (=> start!134100 tp_is_empty!38975))

(assert (=> start!134100 true))

(declare-datatypes ((array!104613 0))(
  ( (array!104614 (arr!50487 (Array (_ BitVec 32) (_ BitVec 64))) (size!51038 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104613)

(declare-fun array_inv!39147 (array!104613) Bool)

(assert (=> start!134100 (array_inv!39147 _keys!637)))

(declare-datatypes ((V!60173 0))(
  ( (V!60174 (val!19571 Int)) )
))
(declare-datatypes ((ValueCell!18457 0))(
  ( (ValueCellFull!18457 (v!22327 V!60173)) (EmptyCell!18457) )
))
(declare-datatypes ((array!104615 0))(
  ( (array!104616 (arr!50488 (Array (_ BitVec 32) ValueCell!18457)) (size!51039 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104615)

(declare-fun e!873359 () Bool)

(declare-fun array_inv!39148 (array!104615) Bool)

(assert (=> start!134100 (and (array_inv!39148 _values!487) e!873359)))

(declare-fun mapIsEmpty!59862 () Bool)

(declare-fun mapRes!59862 () Bool)

(assert (=> mapIsEmpty!59862 mapRes!59862))

(declare-fun b!1566757 () Bool)

(declare-fun e!873357 () Bool)

(assert (=> b!1566757 (= e!873357 false)))

(declare-fun lt!672742 () Bool)

(declare-datatypes ((tuple2!25414 0))(
  ( (tuple2!25415 (_1!12717 (_ BitVec 64)) (_2!12717 V!60173)) )
))
(declare-datatypes ((List!36800 0))(
  ( (Nil!36797) (Cons!36796 (h!38244 tuple2!25414) (t!51711 List!36800)) )
))
(declare-datatypes ((ListLongMap!22861 0))(
  ( (ListLongMap!22862 (toList!11446 List!36800)) )
))
(declare-fun lt!672743 () ListLongMap!22861)

(declare-fun contains!10370 (ListLongMap!22861 (_ BitVec 64)) Bool)

(assert (=> b!1566757 (= lt!672742 (contains!10370 lt!672743 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1566758 () Bool)

(declare-fun e!873362 () Bool)

(assert (=> b!1566758 (= e!873362 tp_is_empty!38975)))

(declare-fun b!1566759 () Bool)

(assert (=> b!1566759 (= e!873359 (and e!873361 mapRes!59862))))

(declare-fun condMapEmpty!59862 () Bool)

(declare-fun mapDefault!59862 () ValueCell!18457)

