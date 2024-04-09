; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3994 () Bool)

(assert start!3994)

(declare-fun b_free!901 () Bool)

(declare-fun b_next!901 () Bool)

(assert (=> start!3994 (= b_free!901 (not b_next!901))))

(declare-fun tp!4123 () Bool)

(declare-fun b_and!1713 () Bool)

(assert (=> start!3994 (= tp!4123 b_and!1713)))

(declare-fun b!28970 () Bool)

(declare-fun e!18722 () Bool)

(declare-fun e!18725 () Bool)

(declare-fun mapRes!1411 () Bool)

(assert (=> b!28970 (= e!18722 (and e!18725 mapRes!1411))))

(declare-fun condMapEmpty!1411 () Bool)

(declare-datatypes ((V!1499 0))(
  ( (V!1500 (val!654 Int)) )
))
(declare-datatypes ((ValueCell!428 0))(
  ( (ValueCellFull!428 (v!1743 V!1499)) (EmptyCell!428) )
))
(declare-datatypes ((array!1733 0))(
  ( (array!1734 (arr!820 (Array (_ BitVec 32) ValueCell!428)) (size!921 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1733)

(declare-fun mapDefault!1411 () ValueCell!428)

