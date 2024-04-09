; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81900 () Bool)

(assert start!81900)

(declare-fun b_free!18367 () Bool)

(declare-fun b_next!18367 () Bool)

(assert (=> start!81900 (= b_free!18367 (not b_next!18367))))

(declare-fun tp!63801 () Bool)

(declare-fun b_and!29871 () Bool)

(assert (=> start!81900 (= tp!63801 b_and!29871)))

(declare-fun b!954682 () Bool)

(declare-fun res!639412 () Bool)

(declare-fun e!537888 () Bool)

(assert (=> b!954682 (=> (not res!639412) (not e!537888))))

(declare-datatypes ((array!57947 0))(
  ( (array!57948 (arr!27849 (Array (_ BitVec 32) (_ BitVec 64))) (size!28329 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57947)

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57947 (_ BitVec 32)) Bool)

(assert (=> b!954682 (= res!639412 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!954683 () Bool)

(declare-fun res!639411 () Bool)

(assert (=> b!954683 (=> (not res!639411) (not e!537888))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((V!32865 0))(
  ( (V!32866 (val!10506 Int)) )
))
(declare-datatypes ((ValueCell!9974 0))(
  ( (ValueCellFull!9974 (v!13061 V!32865)) (EmptyCell!9974) )
))
(declare-datatypes ((array!57949 0))(
  ( (array!57950 (arr!27850 (Array (_ BitVec 32) ValueCell!9974)) (size!28330 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57949)

(assert (=> b!954683 (= res!639411 (and (= (size!28330 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28329 _keys!1441) (size!28330 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!954684 () Bool)

(declare-fun e!537890 () Bool)

(declare-fun tp_is_empty!20911 () Bool)

(assert (=> b!954684 (= e!537890 tp_is_empty!20911)))

(declare-fun b!954685 () Bool)

(declare-fun res!639415 () Bool)

(assert (=> b!954685 (=> (not res!639415) (not e!537888))))

(declare-fun i!735 () (_ BitVec 32))

(assert (=> b!954685 (= res!639415 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28329 _keys!1441))))))

(declare-fun b!954686 () Bool)

(declare-fun res!639413 () Bool)

(assert (=> b!954686 (=> (not res!639413) (not e!537888))))

(declare-datatypes ((List!19552 0))(
  ( (Nil!19549) (Cons!19548 (h!20710 (_ BitVec 64)) (t!27921 List!19552)) )
))
(declare-fun arrayNoDuplicates!0 (array!57947 (_ BitVec 32) List!19552) Bool)

(assert (=> b!954686 (= res!639413 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19549))))

(declare-fun b!954687 () Bool)

(declare-fun e!537887 () Bool)

(declare-fun mapRes!33328 () Bool)

(assert (=> b!954687 (= e!537887 (and e!537890 mapRes!33328))))

(declare-fun condMapEmpty!33328 () Bool)

(declare-fun mapDefault!33328 () ValueCell!9974)

