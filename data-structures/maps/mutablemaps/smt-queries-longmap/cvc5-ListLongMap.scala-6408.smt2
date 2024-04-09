; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82272 () Bool)

(assert start!82272)

(declare-fun b_free!18517 () Bool)

(declare-fun b_next!18517 () Bool)

(assert (=> start!82272 (= b_free!18517 (not b_next!18517))))

(declare-fun tp!64512 () Bool)

(declare-fun b_and!30023 () Bool)

(assert (=> start!82272 (= tp!64512 b_and!30023)))

(declare-fun b!958508 () Bool)

(declare-fun res!641705 () Bool)

(declare-fun e!540398 () Bool)

(assert (=> b!958508 (=> (not res!641705) (not e!540398))))

(declare-datatypes ((array!58561 0))(
  ( (array!58562 (arr!28150 (Array (_ BitVec 32) (_ BitVec 64))) (size!28630 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58561)

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58561 (_ BitVec 32)) Bool)

(assert (=> b!958508 (= res!641705 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun mapNonEmpty!33814 () Bool)

(declare-fun mapRes!33814 () Bool)

(declare-fun tp!64513 () Bool)

(declare-fun e!540394 () Bool)

(assert (=> mapNonEmpty!33814 (= mapRes!33814 (and tp!64513 e!540394))))

(declare-fun mapKey!33814 () (_ BitVec 32))

(declare-datatypes ((V!33281 0))(
  ( (V!33282 (val!10662 Int)) )
))
(declare-datatypes ((ValueCell!10130 0))(
  ( (ValueCellFull!10130 (v!13219 V!33281)) (EmptyCell!10130) )
))
(declare-datatypes ((array!58563 0))(
  ( (array!58564 (arr!28151 (Array (_ BitVec 32) ValueCell!10130)) (size!28631 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58563)

(declare-fun mapRest!33814 () (Array (_ BitVec 32) ValueCell!10130))

(declare-fun mapValue!33814 () ValueCell!10130)

(assert (=> mapNonEmpty!33814 (= (arr!28151 _values!1386) (store mapRest!33814 mapKey!33814 mapValue!33814))))

(declare-fun b!958509 () Bool)

(declare-fun res!641704 () Bool)

(assert (=> b!958509 (=> (not res!641704) (not e!540398))))

(declare-datatypes ((List!19703 0))(
  ( (Nil!19700) (Cons!19699 (h!20861 (_ BitVec 64)) (t!28074 List!19703)) )
))
(declare-fun arrayNoDuplicates!0 (array!58561 (_ BitVec 32) List!19703) Bool)

(assert (=> b!958509 (= res!641704 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19700))))

(declare-fun b!958510 () Bool)

(declare-fun res!641708 () Bool)

(assert (=> b!958510 (=> (not res!641708) (not e!540398))))

(declare-fun i!793 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!958510 (= res!641708 (validKeyInArray!0 (select (arr!28150 _keys!1668) i!793)))))

(declare-fun b!958511 () Bool)

(declare-fun res!641706 () Bool)

(assert (=> b!958511 (=> (not res!641706) (not e!540398))))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(assert (=> b!958511 (= res!641706 (and (= (size!28631 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28630 _keys!1668) (size!28631 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!33814 () Bool)

(assert (=> mapIsEmpty!33814 mapRes!33814))

(declare-fun b!958512 () Bool)

(declare-fun res!641707 () Bool)

(assert (=> b!958512 (=> (not res!641707) (not e!540398))))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!958512 (= res!641707 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28630 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28630 _keys!1668))))))

(declare-fun b!958513 () Bool)

(assert (=> b!958513 (= e!540398 false)))

(declare-fun minValue!1328 () V!33281)

(declare-fun defaultEntry!1389 () Int)

(declare-fun lt!430412 () Bool)

(declare-fun zeroValue!1328 () V!33281)

(declare-datatypes ((tuple2!13838 0))(
  ( (tuple2!13839 (_1!6929 (_ BitVec 64)) (_2!6929 V!33281)) )
))
(declare-datatypes ((List!19704 0))(
  ( (Nil!19701) (Cons!19700 (h!20862 tuple2!13838) (t!28075 List!19704)) )
))
(declare-datatypes ((ListLongMap!12549 0))(
  ( (ListLongMap!12550 (toList!6290 List!19704)) )
))
(declare-fun contains!5343 (ListLongMap!12549 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3475 (array!58561 array!58563 (_ BitVec 32) (_ BitVec 32) V!33281 V!33281 (_ BitVec 32) Int) ListLongMap!12549)

(assert (=> b!958513 (= lt!430412 (contains!5343 (getCurrentListMap!3475 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28150 _keys!1668) i!793)))))

(declare-fun b!958514 () Bool)

(declare-fun e!540397 () Bool)

(declare-fun tp_is_empty!21223 () Bool)

(assert (=> b!958514 (= e!540397 tp_is_empty!21223)))

(declare-fun b!958515 () Bool)

(declare-fun e!540395 () Bool)

(assert (=> b!958515 (= e!540395 (and e!540397 mapRes!33814))))

(declare-fun condMapEmpty!33814 () Bool)

(declare-fun mapDefault!33814 () ValueCell!10130)

