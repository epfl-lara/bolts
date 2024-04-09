; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20784 () Bool)

(assert start!20784)

(declare-fun b!208024 () Bool)

(declare-fun res!101139 () Bool)

(declare-fun e!135729 () Bool)

(assert (=> b!208024 (=> (not res!101139) (not e!135729))))

(declare-datatypes ((array!9778 0))(
  ( (array!9779 (arr!4639 (Array (_ BitVec 32) (_ BitVec 64))) (size!4964 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9778)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6697 0))(
  ( (V!6698 (val!2688 Int)) )
))
(declare-datatypes ((ValueCell!2300 0))(
  ( (ValueCellFull!2300 (v!4654 V!6697)) (EmptyCell!2300) )
))
(declare-datatypes ((array!9780 0))(
  ( (array!9781 (arr!4640 (Array (_ BitVec 32) ValueCell!2300)) (size!4965 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9780)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!208024 (= res!101139 (and (= (size!4965 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4964 _keys!825) (size!4965 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!208025 () Bool)

(declare-fun e!135726 () Bool)

(declare-fun e!135728 () Bool)

(declare-fun mapRes!8999 () Bool)

(assert (=> b!208025 (= e!135726 (and e!135728 mapRes!8999))))

(declare-fun condMapEmpty!8999 () Bool)

(declare-fun mapDefault!8999 () ValueCell!2300)

