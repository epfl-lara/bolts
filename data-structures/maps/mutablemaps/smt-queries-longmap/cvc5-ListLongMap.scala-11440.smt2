; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133470 () Bool)

(assert start!133470)

(declare-fun mapIsEmpty!59157 () Bool)

(declare-fun mapRes!59157 () Bool)

(assert (=> mapIsEmpty!59157 mapRes!59157))

(declare-fun b!1559852 () Bool)

(declare-fun res!1066759 () Bool)

(declare-fun e!869188 () Bool)

(assert (=> b!1559852 (=> (not res!1066759) (not e!869188))))

(declare-fun from!782 () (_ BitVec 32))

(declare-datatypes ((array!103721 0))(
  ( (array!103722 (arr!50048 (Array (_ BitVec 32) (_ BitVec 64))) (size!50599 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103721)

(assert (=> b!1559852 (= res!1066759 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50599 _keys!637)) (bvsge from!782 (size!50599 _keys!637))))))

(declare-fun b!1559853 () Bool)

(declare-fun e!869189 () Bool)

(declare-fun e!869191 () Bool)

(assert (=> b!1559853 (= e!869189 (and e!869191 mapRes!59157))))

(declare-fun condMapEmpty!59157 () Bool)

(declare-datatypes ((V!59569 0))(
  ( (V!59570 (val!19344 Int)) )
))
(declare-datatypes ((ValueCell!18230 0))(
  ( (ValueCellFull!18230 (v!22093 V!59569)) (EmptyCell!18230) )
))
(declare-datatypes ((array!103723 0))(
  ( (array!103724 (arr!50049 (Array (_ BitVec 32) ValueCell!18230)) (size!50600 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103723)

(declare-fun mapDefault!59157 () ValueCell!18230)

