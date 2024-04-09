; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78830 () Bool)

(assert start!78830)

(declare-fun b_free!17015 () Bool)

(declare-fun b_next!17015 () Bool)

(assert (=> start!78830 (= b_free!17015 (not b_next!17015))))

(declare-fun tp!59487 () Bool)

(declare-fun b_and!27785 () Bool)

(assert (=> start!78830 (= tp!59487 b_and!27785)))

(declare-fun mapIsEmpty!31041 () Bool)

(declare-fun mapRes!31041 () Bool)

(assert (=> mapIsEmpty!31041 mapRes!31041))

(declare-fun b!919737 () Bool)

(declare-fun e!516264 () Bool)

(declare-fun tp_is_empty!19523 () Bool)

(assert (=> b!919737 (= e!516264 tp_is_empty!19523)))

(declare-fun b!919738 () Bool)

(declare-fun res!620308 () Bool)

(declare-fun e!516268 () Bool)

(assert (=> b!919738 (=> (not res!620308) (not e!516268))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!919738 (= res!620308 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!919739 () Bool)

(declare-fun e!516269 () Bool)

(assert (=> b!919739 (= e!516269 tp_is_empty!19523)))

(declare-fun b!919740 () Bool)

(declare-fun res!620312 () Bool)

(declare-fun e!516266 () Bool)

(assert (=> b!919740 (=> (not res!620312) (not e!516266))))

(declare-datatypes ((array!55038 0))(
  ( (array!55039 (arr!26460 (Array (_ BitVec 32) (_ BitVec 64))) (size!26920 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55038)

(assert (=> b!919740 (= res!620312 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26920 _keys!1487))))))

(declare-fun b!919741 () Bool)

(declare-fun res!620307 () Bool)

(assert (=> b!919741 (=> (not res!620307) (not e!516266))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!30995 0))(
  ( (V!30996 (val!9812 Int)) )
))
(declare-datatypes ((ValueCell!9280 0))(
  ( (ValueCellFull!9280 (v!12330 V!30995)) (EmptyCell!9280) )
))
(declare-datatypes ((array!55040 0))(
  ( (array!55041 (arr!26461 (Array (_ BitVec 32) ValueCell!9280)) (size!26921 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55040)

(assert (=> b!919741 (= res!620307 (and (= (size!26921 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26920 _keys!1487) (size!26921 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!919742 () Bool)

(declare-fun e!516270 () Bool)

(assert (=> b!919742 (= e!516268 e!516270)))

(declare-fun res!620303 () Bool)

(assert (=> b!919742 (=> (not res!620303) (not e!516270))))

(declare-fun lt!412879 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!919742 (= res!620303 (validKeyInArray!0 lt!412879))))

(assert (=> b!919742 (= lt!412879 (select (arr!26460 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!919743 () Bool)

(declare-fun res!620311 () Bool)

(assert (=> b!919743 (=> (not res!620311) (not e!516268))))

(declare-fun v!791 () V!30995)

(declare-datatypes ((tuple2!12840 0))(
  ( (tuple2!12841 (_1!6430 (_ BitVec 64)) (_2!6430 V!30995)) )
))
(declare-datatypes ((List!18684 0))(
  ( (Nil!18681) (Cons!18680 (h!19826 tuple2!12840) (t!26437 List!18684)) )
))
(declare-datatypes ((ListLongMap!11551 0))(
  ( (ListLongMap!11552 (toList!5791 List!18684)) )
))
(declare-fun lt!412880 () ListLongMap!11551)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun apply!605 (ListLongMap!11551 (_ BitVec 64)) V!30995)

(assert (=> b!919743 (= res!620311 (= (apply!605 lt!412880 k!1099) v!791))))

(declare-fun b!919744 () Bool)

(declare-fun e!516267 () Bool)

(assert (=> b!919744 (= e!516267 (and e!516269 mapRes!31041))))

(declare-fun condMapEmpty!31041 () Bool)

(declare-fun mapDefault!31041 () ValueCell!9280)

