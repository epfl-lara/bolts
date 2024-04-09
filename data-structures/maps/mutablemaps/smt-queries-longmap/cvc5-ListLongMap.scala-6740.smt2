; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84476 () Bool)

(assert start!84476)

(declare-fun b_free!19999 () Bool)

(declare-fun b_next!19999 () Bool)

(assert (=> start!84476 (= b_free!19999 (not b_next!19999))))

(declare-fun tp!69778 () Bool)

(declare-fun b_and!32083 () Bool)

(assert (=> start!84476 (= tp!69778 b_and!32083)))

(declare-fun b!987550 () Bool)

(declare-fun res!660764 () Bool)

(declare-fun e!556893 () Bool)

(assert (=> b!987550 (=> (not res!660764) (not e!556893))))

(declare-datatypes ((array!62379 0))(
  ( (array!62380 (arr!30041 (Array (_ BitVec 32) (_ BitVec 64))) (size!30521 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62379)

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!987550 (= res!660764 (validKeyInArray!0 (select (arr!30041 _keys!1544) from!1932)))))

(declare-fun mapIsEmpty!36857 () Bool)

(declare-fun mapRes!36857 () Bool)

(assert (=> mapIsEmpty!36857 mapRes!36857))

(declare-fun b!987551 () Bool)

(declare-fun res!660763 () Bool)

(assert (=> b!987551 (=> (not res!660763) (not e!556893))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62379 (_ BitVec 32)) Bool)

(assert (=> b!987551 (= res!660763 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!987552 () Bool)

(declare-fun res!660762 () Bool)

(assert (=> b!987552 (=> (not res!660762) (not e!556893))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!987552 (= res!660762 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!987553 () Bool)

(declare-fun e!556896 () Bool)

(declare-fun tp_is_empty!23215 () Bool)

(assert (=> b!987553 (= e!556896 tp_is_empty!23215)))

(declare-fun b!987554 () Bool)

(declare-fun e!556891 () Bool)

(declare-datatypes ((V!35937 0))(
  ( (V!35938 (val!11658 Int)) )
))
(declare-datatypes ((ValueCell!11126 0))(
  ( (ValueCellFull!11126 (v!14222 V!35937)) (EmptyCell!11126) )
))
(declare-datatypes ((array!62381 0))(
  ( (array!62382 (arr!30042 (Array (_ BitVec 32) ValueCell!11126)) (size!30522 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62381)

(assert (=> b!987554 (= e!556891 (bvslt from!1932 (size!30522 _values!1278)))))

(declare-fun minValue!1220 () V!35937)

(declare-fun zeroValue!1220 () V!35937)

(declare-fun defaultEntry!1281 () Int)

(declare-datatypes ((tuple2!14950 0))(
  ( (tuple2!14951 (_1!7485 (_ BitVec 64)) (_2!7485 V!35937)) )
))
(declare-datatypes ((List!20902 0))(
  ( (Nil!20899) (Cons!20898 (h!22060 tuple2!14950) (t!29837 List!20902)) )
))
(declare-datatypes ((ListLongMap!13661 0))(
  ( (ListLongMap!13662 (toList!6846 List!20902)) )
))
(declare-fun lt!437891 () ListLongMap!13661)

(declare-fun getCurrentListMap!3867 (array!62379 array!62381 (_ BitVec 32) (_ BitVec 32) V!35937 V!35937 (_ BitVec 32) Int) ListLongMap!13661)

(assert (=> b!987554 (= lt!437891 (getCurrentListMap!3867 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun lt!437892 () ListLongMap!13661)

(declare-fun lt!437890 () ListLongMap!13661)

(declare-fun lt!437894 () tuple2!14950)

(declare-fun lt!437887 () tuple2!14950)

(declare-fun +!3034 (ListLongMap!13661 tuple2!14950) ListLongMap!13661)

(assert (=> b!987554 (= lt!437890 (+!3034 (+!3034 lt!437892 lt!437887) lt!437894))))

(declare-datatypes ((Unit!32733 0))(
  ( (Unit!32734) )
))
(declare-fun lt!437886 () Unit!32733)

(declare-fun lt!437884 () V!35937)

(declare-fun addCommutativeForDiffKeys!690 (ListLongMap!13661 (_ BitVec 64) V!35937 (_ BitVec 64) V!35937) Unit!32733)

(assert (=> b!987554 (= lt!437886 (addCommutativeForDiffKeys!690 lt!437892 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!30041 _keys!1544) from!1932) lt!437884))))

(declare-fun b!987555 () Bool)

(declare-fun e!556894 () Bool)

(declare-fun e!556892 () Bool)

(assert (=> b!987555 (= e!556894 (and e!556892 mapRes!36857))))

(declare-fun condMapEmpty!36857 () Bool)

(declare-fun mapDefault!36857 () ValueCell!11126)

