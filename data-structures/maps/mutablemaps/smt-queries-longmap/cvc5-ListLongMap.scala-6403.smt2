; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82242 () Bool)

(assert start!82242)

(declare-fun b_free!18487 () Bool)

(declare-fun b_next!18487 () Bool)

(assert (=> start!82242 (= b_free!18487 (not b_next!18487))))

(declare-fun tp!64423 () Bool)

(declare-fun b_and!29993 () Bool)

(assert (=> start!82242 (= tp!64423 b_and!29993)))

(declare-fun b!958103 () Bool)

(declare-fun e!540169 () Bool)

(declare-fun tp_is_empty!21193 () Bool)

(assert (=> b!958103 (= e!540169 tp_is_empty!21193)))

(declare-fun mapIsEmpty!33769 () Bool)

(declare-fun mapRes!33769 () Bool)

(assert (=> mapIsEmpty!33769 mapRes!33769))

(declare-fun b!958104 () Bool)

(declare-fun res!641438 () Bool)

(declare-fun e!540173 () Bool)

(assert (=> b!958104 (=> (not res!641438) (not e!540173))))

(declare-datatypes ((array!58503 0))(
  ( (array!58504 (arr!28121 (Array (_ BitVec 32) (_ BitVec 64))) (size!28601 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58503)

(declare-datatypes ((List!19680 0))(
  ( (Nil!19677) (Cons!19676 (h!20838 (_ BitVec 64)) (t!28051 List!19680)) )
))
(declare-fun arrayNoDuplicates!0 (array!58503 (_ BitVec 32) List!19680) Bool)

(assert (=> b!958104 (= res!641438 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19677))))

(declare-fun res!641437 () Bool)

(assert (=> start!82242 (=> (not res!641437) (not e!540173))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82242 (= res!641437 (validMask!0 mask!2088))))

(assert (=> start!82242 e!540173))

(assert (=> start!82242 true))

(assert (=> start!82242 tp_is_empty!21193))

(declare-fun array_inv!21755 (array!58503) Bool)

(assert (=> start!82242 (array_inv!21755 _keys!1668)))

(declare-datatypes ((V!33241 0))(
  ( (V!33242 (val!10647 Int)) )
))
(declare-datatypes ((ValueCell!10115 0))(
  ( (ValueCellFull!10115 (v!13204 V!33241)) (EmptyCell!10115) )
))
(declare-datatypes ((array!58505 0))(
  ( (array!58506 (arr!28122 (Array (_ BitVec 32) ValueCell!10115)) (size!28602 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58505)

(declare-fun e!540171 () Bool)

(declare-fun array_inv!21756 (array!58505) Bool)

(assert (=> start!82242 (and (array_inv!21756 _values!1386) e!540171)))

(assert (=> start!82242 tp!64423))

(declare-fun b!958105 () Bool)

(declare-fun e!540170 () Bool)

(assert (=> b!958105 (= e!540170 tp_is_empty!21193)))

(declare-fun b!958106 () Bool)

(declare-fun res!641435 () Bool)

(assert (=> b!958106 (=> (not res!641435) (not e!540173))))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(assert (=> b!958106 (= res!641435 (and (= (size!28602 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28601 _keys!1668) (size!28602 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!958107 () Bool)

(declare-fun res!641439 () Bool)

(assert (=> b!958107 (=> (not res!641439) (not e!540173))))

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!958107 (= res!641439 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28601 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28601 _keys!1668))))))

(declare-fun b!958108 () Bool)

(declare-fun res!641434 () Bool)

(assert (=> b!958108 (=> (not res!641434) (not e!540173))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58503 (_ BitVec 32)) Bool)

(assert (=> b!958108 (= res!641434 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun mapNonEmpty!33769 () Bool)

(declare-fun tp!64422 () Bool)

(assert (=> mapNonEmpty!33769 (= mapRes!33769 (and tp!64422 e!540170))))

(declare-fun mapKey!33769 () (_ BitVec 32))

(declare-fun mapValue!33769 () ValueCell!10115)

(declare-fun mapRest!33769 () (Array (_ BitVec 32) ValueCell!10115))

(assert (=> mapNonEmpty!33769 (= (arr!28122 _values!1386) (store mapRest!33769 mapKey!33769 mapValue!33769))))

(declare-fun b!958109 () Bool)

(declare-fun res!641436 () Bool)

(assert (=> b!958109 (=> (not res!641436) (not e!540173))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!958109 (= res!641436 (validKeyInArray!0 (select (arr!28121 _keys!1668) i!793)))))

(declare-fun b!958110 () Bool)

(assert (=> b!958110 (= e!540173 false)))

(declare-fun minValue!1328 () V!33241)

(declare-fun lt!430367 () Bool)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33241)

(declare-datatypes ((tuple2!13814 0))(
  ( (tuple2!13815 (_1!6917 (_ BitVec 64)) (_2!6917 V!33241)) )
))
(declare-datatypes ((List!19681 0))(
  ( (Nil!19678) (Cons!19677 (h!20839 tuple2!13814) (t!28052 List!19681)) )
))
(declare-datatypes ((ListLongMap!12525 0))(
  ( (ListLongMap!12526 (toList!6278 List!19681)) )
))
(declare-fun contains!5331 (ListLongMap!12525 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3463 (array!58503 array!58505 (_ BitVec 32) (_ BitVec 32) V!33241 V!33241 (_ BitVec 32) Int) ListLongMap!12525)

(assert (=> b!958110 (= lt!430367 (contains!5331 (getCurrentListMap!3463 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28121 _keys!1668) i!793)))))

(declare-fun b!958111 () Bool)

(assert (=> b!958111 (= e!540171 (and e!540169 mapRes!33769))))

(declare-fun condMapEmpty!33769 () Bool)

(declare-fun mapDefault!33769 () ValueCell!10115)

