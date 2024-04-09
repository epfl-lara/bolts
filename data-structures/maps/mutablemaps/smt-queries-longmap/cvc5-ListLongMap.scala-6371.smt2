; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81990 () Bool)

(assert start!81990)

(declare-fun b!955891 () Bool)

(declare-fun e!538563 () Bool)

(assert (=> b!955891 (= e!538563 false)))

(declare-fun lt!430024 () Bool)

(declare-datatypes ((array!58123 0))(
  ( (array!58124 (arr!27937 (Array (_ BitVec 32) (_ BitVec 64))) (size!28417 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58123)

(declare-datatypes ((List!19609 0))(
  ( (Nil!19606) (Cons!19605 (h!20767 (_ BitVec 64)) (t!27978 List!19609)) )
))
(declare-fun arrayNoDuplicates!0 (array!58123 (_ BitVec 32) List!19609) Bool)

(assert (=> b!955891 (= lt!430024 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19606))))

(declare-fun b!955892 () Bool)

(declare-fun res!640216 () Bool)

(assert (=> b!955892 (=> (not res!640216) (not e!538563))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58123 (_ BitVec 32)) Bool)

(assert (=> b!955892 (= res!640216 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!955894 () Bool)

(declare-fun res!640214 () Bool)

(assert (=> b!955894 (=> (not res!640214) (not e!538563))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((V!32985 0))(
  ( (V!32986 (val!10551 Int)) )
))
(declare-datatypes ((ValueCell!10019 0))(
  ( (ValueCellFull!10019 (v!13106 V!32985)) (EmptyCell!10019) )
))
(declare-datatypes ((array!58125 0))(
  ( (array!58126 (arr!27938 (Array (_ BitVec 32) ValueCell!10019)) (size!28418 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58125)

(assert (=> b!955894 (= res!640214 (and (= (size!28418 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28417 _keys!1441) (size!28418 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!33463 () Bool)

(declare-fun mapRes!33463 () Bool)

(assert (=> mapIsEmpty!33463 mapRes!33463))

(declare-fun b!955895 () Bool)

(declare-fun e!538566 () Bool)

(declare-fun e!538562 () Bool)

(assert (=> b!955895 (= e!538566 (and e!538562 mapRes!33463))))

(declare-fun condMapEmpty!33463 () Bool)

(declare-fun mapDefault!33463 () ValueCell!10019)

