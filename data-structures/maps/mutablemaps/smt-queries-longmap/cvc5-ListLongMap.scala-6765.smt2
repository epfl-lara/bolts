; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84914 () Bool)

(assert start!84914)

(declare-fun res!663043 () Bool)

(declare-fun e!559481 () Bool)

(assert (=> start!84914 (=> (not res!663043) (not e!559481))))

(declare-fun mask!2471 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84914 (= res!663043 (validMask!0 mask!2471))))

(assert (=> start!84914 e!559481))

(assert (=> start!84914 true))

(declare-datatypes ((V!36137 0))(
  ( (V!36138 (val!11733 Int)) )
))
(declare-datatypes ((ValueCell!11201 0))(
  ( (ValueCellFull!11201 (v!14310 V!36137)) (EmptyCell!11201) )
))
(declare-datatypes ((array!62681 0))(
  ( (array!62682 (arr!30181 (Array (_ BitVec 32) ValueCell!11201)) (size!30661 (_ BitVec 32))) )
))
(declare-fun _values!1551 () array!62681)

(declare-fun e!559480 () Bool)

(declare-fun array_inv!23173 (array!62681) Bool)

(assert (=> start!84914 (and (array_inv!23173 _values!1551) e!559480)))

(declare-datatypes ((array!62683 0))(
  ( (array!62684 (arr!30182 (Array (_ BitVec 32) (_ BitVec 64))) (size!30662 (_ BitVec 32))) )
))
(declare-fun _keys!1945 () array!62683)

(declare-fun array_inv!23174 (array!62683) Bool)

(assert (=> start!84914 (array_inv!23174 _keys!1945)))

(declare-fun mapNonEmpty!37119 () Bool)

(declare-fun mapRes!37119 () Bool)

(declare-fun tp!70191 () Bool)

(declare-fun e!559477 () Bool)

(assert (=> mapNonEmpty!37119 (= mapRes!37119 (and tp!70191 e!559477))))

(declare-fun mapRest!37119 () (Array (_ BitVec 32) ValueCell!11201))

(declare-fun mapKey!37119 () (_ BitVec 32))

(declare-fun mapValue!37119 () ValueCell!11201)

(assert (=> mapNonEmpty!37119 (= (arr!30181 _values!1551) (store mapRest!37119 mapKey!37119 mapValue!37119))))

(declare-fun b!991821 () Bool)

(declare-fun res!663041 () Bool)

(assert (=> b!991821 (=> (not res!663041) (not e!559481))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62683 (_ BitVec 32)) Bool)

(assert (=> b!991821 (= res!663041 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1945 mask!2471))))

(declare-fun b!991822 () Bool)

(declare-fun tp_is_empty!23365 () Bool)

(assert (=> b!991822 (= e!559477 tp_is_empty!23365)))

(declare-fun b!991823 () Bool)

(declare-fun e!559479 () Bool)

(assert (=> b!991823 (= e!559479 tp_is_empty!23365)))

(declare-fun b!991824 () Bool)

(declare-fun res!663042 () Bool)

(assert (=> b!991824 (=> (not res!663042) (not e!559481))))

(declare-fun extraKeys!1472 () (_ BitVec 32))

(assert (=> b!991824 (= res!663042 (and (= (size!30661 _values!1551) (bvadd #b00000000000000000000000000000001 mask!2471)) (= (size!30662 _keys!1945) (size!30661 _values!1551)) (bvsge mask!2471 #b00000000000000000000000000000000) (bvsge extraKeys!1472 #b00000000000000000000000000000000) (bvsle extraKeys!1472 #b00000000000000000000000000000011)))))

(declare-fun b!991825 () Bool)

(assert (=> b!991825 (= e!559481 false)))

(declare-fun lt!439980 () Bool)

(declare-datatypes ((List!20982 0))(
  ( (Nil!20979) (Cons!20978 (h!22140 (_ BitVec 64)) (t!29973 List!20982)) )
))
(declare-fun arrayNoDuplicates!0 (array!62683 (_ BitVec 32) List!20982) Bool)

(assert (=> b!991825 (= lt!439980 (arrayNoDuplicates!0 _keys!1945 #b00000000000000000000000000000000 Nil!20979))))

(declare-fun b!991826 () Bool)

(assert (=> b!991826 (= e!559480 (and e!559479 mapRes!37119))))

(declare-fun condMapEmpty!37119 () Bool)

(declare-fun mapDefault!37119 () ValueCell!11201)

