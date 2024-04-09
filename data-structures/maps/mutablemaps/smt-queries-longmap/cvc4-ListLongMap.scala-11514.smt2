; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134082 () Bool)

(assert start!134082)

(declare-fun b!1566632 () Bool)

(declare-fun e!873281 () Bool)

(declare-datatypes ((array!104599 0))(
  ( (array!104600 (arr!50481 (Array (_ BitVec 32) (_ BitVec 64))) (size!51032 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104599)

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1566632 (= e!873281 (bvsge (bvsub (size!51032 _keys!637) from!782) (bvsub (bvadd #b00000000000000000000000000000001 (size!51032 _keys!637)) from!782)))))

(declare-fun b!1566633 () Bool)

(declare-fun e!873279 () Bool)

(declare-fun tp_is_empty!38969 () Bool)

(assert (=> b!1566633 (= e!873279 tp_is_empty!38969)))

(declare-fun b!1566634 () Bool)

(declare-fun res!1070832 () Bool)

(assert (=> b!1566634 (=> (not res!1070832) (not e!873281))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1566634 (= res!1070832 (not (validKeyInArray!0 (select (arr!50481 _keys!637) from!782))))))

(declare-fun b!1566635 () Bool)

(declare-fun e!873277 () Bool)

(declare-fun e!873278 () Bool)

(declare-fun mapRes!59850 () Bool)

(assert (=> b!1566635 (= e!873277 (and e!873278 mapRes!59850))))

(declare-fun condMapEmpty!59850 () Bool)

(declare-datatypes ((V!60165 0))(
  ( (V!60166 (val!19568 Int)) )
))
(declare-datatypes ((ValueCell!18454 0))(
  ( (ValueCellFull!18454 (v!22324 V!60165)) (EmptyCell!18454) )
))
(declare-datatypes ((array!104601 0))(
  ( (array!104602 (arr!50482 (Array (_ BitVec 32) ValueCell!18454)) (size!51033 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104601)

(declare-fun mapDefault!59850 () ValueCell!18454)

