; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33884 () Bool)

(assert start!33884)

(declare-fun b_free!7055 () Bool)

(declare-fun b_next!7055 () Bool)

(assert (=> start!33884 (= b_free!7055 (not b_next!7055))))

(declare-fun tp!24677 () Bool)

(declare-fun b_and!14259 () Bool)

(assert (=> start!33884 (= tp!24677 b_and!14259)))

(declare-fun b!337024 () Bool)

(declare-fun e!206837 () Bool)

(declare-fun e!206836 () Bool)

(declare-fun mapRes!11916 () Bool)

(assert (=> b!337024 (= e!206837 (and e!206836 mapRes!11916))))

(declare-fun condMapEmpty!11916 () Bool)

(declare-datatypes ((V!10319 0))(
  ( (V!10320 (val!3548 Int)) )
))
(declare-datatypes ((ValueCell!3160 0))(
  ( (ValueCellFull!3160 (v!5709 V!10319)) (EmptyCell!3160) )
))
(declare-datatypes ((array!17591 0))(
  ( (array!17592 (arr!8320 (Array (_ BitVec 32) ValueCell!3160)) (size!8672 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17591)

(declare-fun mapDefault!11916 () ValueCell!3160)

