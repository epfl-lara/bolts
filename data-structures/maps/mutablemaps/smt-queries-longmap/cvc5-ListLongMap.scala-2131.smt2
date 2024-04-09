; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36044 () Bool)

(assert start!36044)

(declare-fun from!1924 () (_ BitVec 32))

(declare-datatypes ((array!20343 0))(
  ( (array!20344 (arr!9654 (Array (_ BitVec 32) (_ BitVec 64))) (size!10006 (_ BitVec 32))) )
))
(declare-fun _keys!1541 () array!20343)

(declare-fun e!221517 () Bool)

(declare-fun k!1134 () (_ BitVec 64))

(declare-fun b!361661 () Bool)

(assert (=> b!361661 (= e!221517 (and (not (= (select (arr!9654 _keys!1541) from!1924) k!1134)) (bvsge (bvadd #b00000000000000000000000000000001 from!1924) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1924) (size!10006 _keys!1541)) (bvsge (size!10006 _keys!1541) #b01111111111111111111111111111111)))))

(declare-fun b!361662 () Bool)

(declare-fun e!221516 () Bool)

(declare-fun e!221518 () Bool)

(declare-fun mapRes!14142 () Bool)

(assert (=> b!361662 (= e!221516 (and e!221518 mapRes!14142))))

(declare-fun condMapEmpty!14142 () Bool)

(declare-datatypes ((V!12187 0))(
  ( (V!12188 (val!4248 Int)) )
))
(declare-datatypes ((ValueCell!3860 0))(
  ( (ValueCellFull!3860 (v!6439 V!12187)) (EmptyCell!3860) )
))
(declare-datatypes ((array!20345 0))(
  ( (array!20346 (arr!9655 (Array (_ BitVec 32) ValueCell!3860)) (size!10007 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20345)

(declare-fun mapDefault!14142 () ValueCell!3860)

