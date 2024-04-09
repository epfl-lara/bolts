; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3910 () Bool)

(assert start!3910)

(declare-fun b_free!817 () Bool)

(declare-fun b_next!817 () Bool)

(assert (=> start!3910 (= b_free!817 (not b_next!817))))

(declare-fun tp!3871 () Bool)

(declare-fun b_and!1629 () Bool)

(assert (=> start!3910 (= tp!3871 b_and!1629)))

(declare-fun b!27665 () Bool)

(declare-fun res!16384 () Bool)

(declare-fun e!17995 () Bool)

(assert (=> b!27665 (=> (not res!16384) (not e!17995))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1571 0))(
  ( (array!1572 (arr!739 (Array (_ BitVec 32) (_ BitVec 64))) (size!840 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1571)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-datatypes ((V!1387 0))(
  ( (V!1388 (val!612 Int)) )
))
(declare-datatypes ((ValueCell!386 0))(
  ( (ValueCellFull!386 (v!1701 V!1387)) (EmptyCell!386) )
))
(declare-datatypes ((array!1573 0))(
  ( (array!1574 (arr!740 (Array (_ BitVec 32) ValueCell!386)) (size!841 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1573)

(assert (=> b!27665 (= res!16384 (and (= (size!841 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!840 _keys!1833) (size!841 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!27666 () Bool)

(declare-fun res!16378 () Bool)

(assert (=> b!27666 (=> (not res!16378) (not e!17995))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1571 (_ BitVec 32)) Bool)

(assert (=> b!27666 (= res!16378 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!27667 () Bool)

(declare-fun e!17993 () Bool)

(declare-fun tp_is_empty!1171 () Bool)

(assert (=> b!27667 (= e!17993 tp_is_empty!1171)))

(declare-fun b!27668 () Bool)

(declare-fun e!17991 () Bool)

(declare-fun e!17994 () Bool)

(declare-fun mapRes!1285 () Bool)

(assert (=> b!27668 (= e!17991 (and e!17994 mapRes!1285))))

(declare-fun condMapEmpty!1285 () Bool)

(declare-fun mapDefault!1285 () ValueCell!386)

