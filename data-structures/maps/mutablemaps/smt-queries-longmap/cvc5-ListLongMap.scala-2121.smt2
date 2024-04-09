; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35918 () Bool)

(assert start!35918)

(declare-fun b!360846 () Bool)

(declare-fun e!220914 () Bool)

(declare-fun e!220912 () Bool)

(declare-fun mapRes!14031 () Bool)

(assert (=> b!360846 (= e!220914 (and e!220912 mapRes!14031))))

(declare-fun condMapEmpty!14031 () Bool)

(declare-datatypes ((V!12107 0))(
  ( (V!12108 (val!4218 Int)) )
))
(declare-datatypes ((ValueCell!3830 0))(
  ( (ValueCellFull!3830 (v!6408 V!12107)) (EmptyCell!3830) )
))
(declare-datatypes ((array!20215 0))(
  ( (array!20216 (arr!9597 (Array (_ BitVec 32) ValueCell!3830)) (size!9949 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20215)

(declare-fun mapDefault!14031 () ValueCell!3830)

