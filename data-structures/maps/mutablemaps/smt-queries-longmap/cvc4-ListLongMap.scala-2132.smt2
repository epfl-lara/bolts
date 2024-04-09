; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36066 () Bool)

(assert start!36066)

(declare-fun b!361813 () Bool)

(declare-fun e!221627 () Bool)

(declare-fun e!221625 () Bool)

(declare-fun mapRes!14160 () Bool)

(assert (=> b!361813 (= e!221627 (and e!221625 mapRes!14160))))

(declare-fun condMapEmpty!14160 () Bool)

(declare-datatypes ((V!12199 0))(
  ( (V!12200 (val!4253 Int)) )
))
(declare-datatypes ((ValueCell!3865 0))(
  ( (ValueCellFull!3865 (v!6444 V!12199)) (EmptyCell!3865) )
))
(declare-datatypes ((array!20363 0))(
  ( (array!20364 (arr!9663 (Array (_ BitVec 32) ValueCell!3865)) (size!10015 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20363)

(declare-fun mapDefault!14160 () ValueCell!3865)

