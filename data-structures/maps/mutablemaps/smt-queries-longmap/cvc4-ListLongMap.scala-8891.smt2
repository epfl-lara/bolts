; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108004 () Bool)

(assert start!108004)

(declare-fun b!1275418 () Bool)

(declare-fun e!728145 () Bool)

(declare-datatypes ((List!28778 0))(
  ( (Nil!28775) (Cons!28774 (h!29983 (_ BitVec 64)) (t!42321 List!28778)) )
))
(declare-fun noDuplicate!2080 (List!28778) Bool)

(assert (=> b!1275418 (= e!728145 (not (noDuplicate!2080 Nil!28775)))))

(declare-fun b!1275419 () Bool)

(declare-fun e!728144 () Bool)

(declare-fun e!728141 () Bool)

(declare-fun mapRes!51416 () Bool)

(assert (=> b!1275419 (= e!728144 (and e!728141 mapRes!51416))))

(declare-fun condMapEmpty!51416 () Bool)

(declare-datatypes ((V!49453 0))(
  ( (V!49454 (val!16706 Int)) )
))
(declare-datatypes ((ValueCell!15733 0))(
  ( (ValueCellFull!15733 (v!19300 V!49453)) (EmptyCell!15733) )
))
(declare-datatypes ((array!83579 0))(
  ( (array!83580 (arr!40299 (Array (_ BitVec 32) ValueCell!15733)) (size!40850 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83579)

(declare-fun mapDefault!51416 () ValueCell!15733)

