; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41652 () Bool)

(assert start!41652)

(declare-fun b_free!11297 () Bool)

(declare-fun b_next!11297 () Bool)

(assert (=> start!41652 (= b_free!11297 (not b_next!11297))))

(declare-fun tp!39892 () Bool)

(declare-fun b_and!19663 () Bool)

(assert (=> start!41652 (= tp!39892 b_and!19663)))

(declare-fun b!464855 () Bool)

(declare-fun e!271622 () Bool)

(declare-fun e!271621 () Bool)

(declare-fun mapRes!20767 () Bool)

(assert (=> b!464855 (= e!271622 (and e!271621 mapRes!20767))))

(declare-fun condMapEmpty!20767 () Bool)

(declare-datatypes ((V!18071 0))(
  ( (V!18072 (val!6407 Int)) )
))
(declare-datatypes ((ValueCell!6019 0))(
  ( (ValueCellFull!6019 (v!8690 V!18071)) (EmptyCell!6019) )
))
(declare-datatypes ((array!29195 0))(
  ( (array!29196 (arr!14025 (Array (_ BitVec 32) ValueCell!6019)) (size!14377 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29195)

(declare-fun mapDefault!20767 () ValueCell!6019)

