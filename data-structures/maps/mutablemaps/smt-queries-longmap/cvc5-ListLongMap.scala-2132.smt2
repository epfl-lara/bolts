; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36062 () Bool)

(assert start!36062)

(declare-fun b!361777 () Bool)

(declare-fun e!221598 () Bool)

(declare-fun e!221597 () Bool)

(declare-fun mapRes!14154 () Bool)

(assert (=> b!361777 (= e!221598 (and e!221597 mapRes!14154))))

(declare-fun condMapEmpty!14154 () Bool)

(declare-datatypes ((V!12195 0))(
  ( (V!12196 (val!4251 Int)) )
))
(declare-datatypes ((ValueCell!3863 0))(
  ( (ValueCellFull!3863 (v!6442 V!12195)) (EmptyCell!3863) )
))
(declare-datatypes ((array!20357 0))(
  ( (array!20358 (arr!9660 (Array (_ BitVec 32) ValueCell!3863)) (size!10012 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20357)

(declare-fun mapDefault!14154 () ValueCell!3863)

