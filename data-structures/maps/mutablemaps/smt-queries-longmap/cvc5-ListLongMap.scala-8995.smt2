; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108766 () Bool)

(assert start!108766)

(declare-fun b_free!28243 () Bool)

(declare-fun b_next!28243 () Bool)

(assert (=> start!108766 (= b_free!28243 (not b_next!28243))))

(declare-fun tp!99846 () Bool)

(declare-fun b_and!46319 () Bool)

(assert (=> start!108766 (= tp!99846 b_and!46319)))

(declare-fun b!1283714 () Bool)

(declare-fun e!733359 () Bool)

(declare-fun tp_is_empty!33883 () Bool)

(assert (=> b!1283714 (= e!733359 tp_is_empty!33883)))

(declare-fun b!1283715 () Bool)

(declare-fun res!852850 () Bool)

(declare-fun e!733360 () Bool)

(assert (=> b!1283715 (=> (not res!852850) (not e!733360))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50281 0))(
  ( (V!50282 (val!17016 Int)) )
))
(declare-datatypes ((ValueCell!16043 0))(
  ( (ValueCellFull!16043 (v!19616 V!50281)) (EmptyCell!16043) )
))
(declare-datatypes ((array!84783 0))(
  ( (array!84784 (arr!40889 (Array (_ BitVec 32) ValueCell!16043)) (size!41440 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84783)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84785 0))(
  ( (array!84786 (arr!40890 (Array (_ BitVec 32) (_ BitVec 64))) (size!41441 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84785)

(assert (=> b!1283715 (= res!852850 (and (= (size!41440 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41441 _keys!1741) (size!41440 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1283717 () Bool)

(declare-fun res!852852 () Bool)

(assert (=> b!1283717 (=> (not res!852852) (not e!733360))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84785 (_ BitVec 32)) Bool)

(assert (=> b!1283717 (= res!852852 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1283718 () Bool)

(declare-fun res!852853 () Bool)

(assert (=> b!1283718 (=> (not res!852853) (not e!733360))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1283718 (= res!852853 (validKeyInArray!0 (select (arr!40890 _keys!1741) from!2144)))))

(declare-fun b!1283719 () Bool)

(declare-fun e!733358 () Bool)

(declare-fun e!733357 () Bool)

(declare-fun mapRes!52382 () Bool)

(assert (=> b!1283719 (= e!733358 (and e!733357 mapRes!52382))))

(declare-fun condMapEmpty!52382 () Bool)

(declare-fun mapDefault!52382 () ValueCell!16043)

