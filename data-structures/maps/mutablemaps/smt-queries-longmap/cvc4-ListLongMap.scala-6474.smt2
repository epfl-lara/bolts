; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82716 () Bool)

(assert start!82716)

(declare-fun b_free!18821 () Bool)

(declare-fun b_next!18821 () Bool)

(assert (=> start!82716 (= b_free!18821 (not b_next!18821))))

(declare-fun tp!65584 () Bool)

(declare-fun b_and!30327 () Bool)

(assert (=> start!82716 (= tp!65584 b_and!30327)))

(declare-fun b!963986 () Bool)

(declare-fun res!645321 () Bool)

(declare-fun e!543511 () Bool)

(assert (=> b!963986 (=> (not res!645321) (not e!543511))))

(declare-datatypes ((array!59321 0))(
  ( (array!59322 (arr!28525 (Array (_ BitVec 32) (_ BitVec 64))) (size!29005 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59321)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59321 (_ BitVec 32)) Bool)

(assert (=> b!963986 (= res!645321 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!963987 () Bool)

(declare-fun e!543508 () Bool)

(assert (=> b!963987 (= e!543511 (not e!543508))))

(declare-fun res!645324 () Bool)

(assert (=> b!963987 (=> res!645324 e!543508)))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!963987 (= res!645324 (or (bvslt (bvsub from!2084 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvsub from!2084 #b00000000000000000000000000000001) (size!29005 _keys!1686)) (bvslt i!803 (bvsub from!2084 #b00000000000000000000000000000001))))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33813 0))(
  ( (V!33814 (val!10862 Int)) )
))
(declare-datatypes ((ValueCell!10330 0))(
  ( (ValueCellFull!10330 (v!13420 V!33813)) (EmptyCell!10330) )
))
(declare-datatypes ((array!59323 0))(
  ( (array!59324 (arr!28526 (Array (_ BitVec 32) ValueCell!10330)) (size!29006 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59323)

(declare-fun minValue!1342 () V!33813)

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!33813)

(declare-datatypes ((tuple2!14042 0))(
  ( (tuple2!14043 (_1!7031 (_ BitVec 64)) (_2!7031 V!33813)) )
))
(declare-datatypes ((List!19920 0))(
  ( (Nil!19917) (Cons!19916 (h!21078 tuple2!14042) (t!28291 List!19920)) )
))
(declare-datatypes ((ListLongMap!12753 0))(
  ( (ListLongMap!12754 (toList!6392 List!19920)) )
))
(declare-fun contains!5446 (ListLongMap!12753 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3577 (array!59321 array!59323 (_ BitVec 32) (_ BitVec 32) V!33813 V!33813 (_ BitVec 32) Int) ListLongMap!12753)

(assert (=> b!963987 (contains!5446 (getCurrentListMap!3577 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28525 _keys!1686) i!803))))

(declare-datatypes ((Unit!32239 0))(
  ( (Unit!32240) )
))
(declare-fun lt!430998 () Unit!32239)

(declare-fun lemmaInListMapFromThenInFromMinusOne!28 (array!59321 array!59323 (_ BitVec 32) (_ BitVec 32) V!33813 V!33813 (_ BitVec 32) (_ BitVec 32) Int) Unit!32239)

(assert (=> b!963987 (= lt!430998 (lemmaInListMapFromThenInFromMinusOne!28 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!963988 () Bool)

(declare-fun res!645320 () Bool)

(assert (=> b!963988 (=> (not res!645320) (not e!543511))))

(assert (=> b!963988 (= res!645320 (contains!5446 (getCurrentListMap!3577 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28525 _keys!1686) i!803)))))

(declare-fun b!963989 () Bool)

(declare-fun e!543507 () Bool)

(declare-fun tp_is_empty!21623 () Bool)

(assert (=> b!963989 (= e!543507 tp_is_empty!21623)))

(declare-fun b!963990 () Bool)

(declare-fun res!645319 () Bool)

(assert (=> b!963990 (=> (not res!645319) (not e!543511))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!963990 (= res!645319 (bvsgt from!2084 newFrom!159))))

(declare-fun b!963991 () Bool)

(declare-fun res!645323 () Bool)

(assert (=> b!963991 (=> (not res!645323) (not e!543511))))

(assert (=> b!963991 (= res!645323 (and (= (size!29006 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29005 _keys!1686) (size!29006 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!34429 () Bool)

(declare-fun mapRes!34429 () Bool)

(declare-fun tp!65583 () Bool)

(declare-fun e!543509 () Bool)

(assert (=> mapNonEmpty!34429 (= mapRes!34429 (and tp!65583 e!543509))))

(declare-fun mapKey!34429 () (_ BitVec 32))

(declare-fun mapValue!34429 () ValueCell!10330)

(declare-fun mapRest!34429 () (Array (_ BitVec 32) ValueCell!10330))

(assert (=> mapNonEmpty!34429 (= (arr!28526 _values!1400) (store mapRest!34429 mapKey!34429 mapValue!34429))))

(declare-fun b!963993 () Bool)

(declare-fun res!645326 () Bool)

(assert (=> b!963993 (=> (not res!645326) (not e!543511))))

(assert (=> b!963993 (= res!645326 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29005 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29005 _keys!1686))))))

(declare-fun mapIsEmpty!34429 () Bool)

(assert (=> mapIsEmpty!34429 mapRes!34429))

(declare-fun b!963994 () Bool)

(declare-fun res!645318 () Bool)

(assert (=> b!963994 (=> (not res!645318) (not e!543511))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!963994 (= res!645318 (validKeyInArray!0 (select (arr!28525 _keys!1686) i!803)))))

(declare-fun b!963995 () Bool)

(assert (=> b!963995 (= e!543509 tp_is_empty!21623)))

(declare-fun b!963996 () Bool)

(assert (=> b!963996 (= e!543508 true)))

(assert (=> b!963996 (contains!5446 (getCurrentListMap!3577 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 newFrom!159 defaultEntry!1403) (select (arr!28525 _keys!1686) i!803))))

(declare-fun lt!430997 () Unit!32239)

(declare-fun lemmaInListMapFromThenInFromSmaller!20 (array!59321 array!59323 (_ BitVec 32) (_ BitVec 32) V!33813 V!33813 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Int) Unit!32239)

(assert (=> b!963996 (= lt!430997 (lemmaInListMapFromThenInFromSmaller!20 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) newFrom!159 i!803 defaultEntry!1403))))

(declare-fun b!963997 () Bool)

(declare-fun res!645322 () Bool)

(assert (=> b!963997 (=> (not res!645322) (not e!543511))))

(declare-datatypes ((List!19921 0))(
  ( (Nil!19918) (Cons!19917 (h!21079 (_ BitVec 64)) (t!28292 List!19921)) )
))
(declare-fun arrayNoDuplicates!0 (array!59321 (_ BitVec 32) List!19921) Bool)

(assert (=> b!963997 (= res!645322 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19918))))

(declare-fun b!963992 () Bool)

(declare-fun e!543510 () Bool)

(assert (=> b!963992 (= e!543510 (and e!543507 mapRes!34429))))

(declare-fun condMapEmpty!34429 () Bool)

(declare-fun mapDefault!34429 () ValueCell!10330)

