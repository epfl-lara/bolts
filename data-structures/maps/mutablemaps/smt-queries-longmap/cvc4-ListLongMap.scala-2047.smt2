; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35462 () Bool)

(assert start!35462)

(declare-fun b_free!7841 () Bool)

(declare-fun b_next!7841 () Bool)

(assert (=> start!35462 (= b_free!7841 (not b_next!7841))))

(declare-fun tp!27308 () Bool)

(declare-fun b_and!15101 () Bool)

(assert (=> start!35462 (= tp!27308 b_and!15101)))

(declare-fun b!354933 () Bool)

(declare-fun res!196919 () Bool)

(declare-fun e!217487 () Bool)

(assert (=> b!354933 (=> (not res!196919) (not e!217487))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-datatypes ((array!19361 0))(
  ( (array!19362 (arr!9171 (Array (_ BitVec 32) (_ BitVec 64))) (size!9523 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19361)

(assert (=> b!354933 (= res!196919 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9523 _keys!1456))))))

(declare-fun b!354934 () Bool)

(declare-fun e!217488 () Bool)

(declare-fun tp_is_empty!7907 () Bool)

(assert (=> b!354934 (= e!217488 tp_is_empty!7907)))

(declare-fun b!354935 () Bool)

(declare-fun res!196918 () Bool)

(assert (=> b!354935 (=> (not res!196918) (not e!217487))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((V!11519 0))(
  ( (V!11520 (val!3998 Int)) )
))
(declare-datatypes ((ValueCell!3610 0))(
  ( (ValueCellFull!3610 (v!6188 V!11519)) (EmptyCell!3610) )
))
(declare-datatypes ((array!19363 0))(
  ( (array!19364 (arr!9172 (Array (_ BitVec 32) ValueCell!3610)) (size!9524 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19363)

(assert (=> b!354935 (= res!196918 (and (= (size!9524 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9523 _keys!1456) (size!9524 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!354936 () Bool)

(declare-fun res!196915 () Bool)

(assert (=> b!354936 (=> (not res!196915) (not e!217487))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19361 (_ BitVec 32)) Bool)

(assert (=> b!354936 (= res!196915 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!354937 () Bool)

(declare-fun e!217490 () Bool)

(declare-fun mapRes!13368 () Bool)

(assert (=> b!354937 (= e!217490 (and e!217488 mapRes!13368))))

(declare-fun condMapEmpty!13368 () Bool)

(declare-fun mapDefault!13368 () ValueCell!3610)

