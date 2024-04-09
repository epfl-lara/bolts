; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108044 () Bool)

(assert start!108044)

(declare-fun b!1275668 () Bool)

(declare-fun e!728336 () Bool)

(declare-fun tp_is_empty!33281 () Bool)

(assert (=> b!1275668 (= e!728336 tp_is_empty!33281)))

(declare-fun b!1275669 () Bool)

(declare-fun e!728338 () Bool)

(declare-fun e!728337 () Bool)

(declare-fun mapRes!51449 () Bool)

(assert (=> b!1275669 (= e!728338 (and e!728337 mapRes!51449))))

(declare-fun condMapEmpty!51449 () Bool)

(declare-datatypes ((V!49477 0))(
  ( (V!49478 (val!16715 Int)) )
))
(declare-datatypes ((ValueCell!15742 0))(
  ( (ValueCellFull!15742 (v!19310 V!49477)) (EmptyCell!15742) )
))
(declare-datatypes ((array!83615 0))(
  ( (array!83616 (arr!40315 (Array (_ BitVec 32) ValueCell!15742)) (size!40866 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83615)

(declare-fun mapDefault!51449 () ValueCell!15742)

