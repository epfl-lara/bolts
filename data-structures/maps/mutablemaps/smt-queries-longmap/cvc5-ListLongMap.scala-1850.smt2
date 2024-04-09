; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33476 () Bool)

(assert start!33476)

(declare-fun b!331996 () Bool)

(declare-fun e!203831 () Bool)

(declare-fun tp_is_empty!6721 () Bool)

(assert (=> b!331996 (= e!203831 tp_is_empty!6721)))

(declare-fun b!331997 () Bool)

(declare-fun e!203833 () Bool)

(assert (=> b!331997 (= e!203833 tp_is_empty!6721)))

(declare-fun mapIsEmpty!11466 () Bool)

(declare-fun mapRes!11466 () Bool)

(assert (=> mapIsEmpty!11466 mapRes!11466))

(declare-fun b!331998 () Bool)

(declare-fun e!203834 () Bool)

(assert (=> b!331998 (= e!203834 (and e!203833 mapRes!11466))))

(declare-fun condMapEmpty!11466 () Bool)

(declare-datatypes ((V!9939 0))(
  ( (V!9940 (val!3405 Int)) )
))
(declare-datatypes ((ValueCell!3017 0))(
  ( (ValueCellFull!3017 (v!5560 V!9939)) (EmptyCell!3017) )
))
(declare-datatypes ((array!17039 0))(
  ( (array!17040 (arr!8051 (Array (_ BitVec 32) ValueCell!3017)) (size!8403 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17039)

(declare-fun mapDefault!11466 () ValueCell!3017)

