; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82570 () Bool)

(assert start!82570)

(declare-fun b_free!18675 () Bool)

(declare-fun b_next!18675 () Bool)

(assert (=> start!82570 (= b_free!18675 (not b_next!18675))))

(declare-fun tp!65146 () Bool)

(declare-fun b_and!30181 () Bool)

(assert (=> start!82570 (= tp!65146 b_and!30181)))

(declare-fun b!961748 () Bool)

(declare-fun res!643740 () Bool)

(declare-fun e!542394 () Bool)

(assert (=> b!961748 (=> (not res!643740) (not e!542394))))

(declare-datatypes ((array!59039 0))(
  ( (array!59040 (arr!28384 (Array (_ BitVec 32) (_ BitVec 64))) (size!28864 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59039)

(declare-datatypes ((List!19825 0))(
  ( (Nil!19822) (Cons!19821 (h!20983 (_ BitVec 64)) (t!28196 List!19825)) )
))
(declare-fun arrayNoDuplicates!0 (array!59039 (_ BitVec 32) List!19825) Bool)

(assert (=> b!961748 (= res!643740 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19822))))

(declare-fun mapIsEmpty!34210 () Bool)

(declare-fun mapRes!34210 () Bool)

(assert (=> mapIsEmpty!34210 mapRes!34210))

(declare-fun b!961749 () Bool)

(declare-fun res!643742 () Bool)

(assert (=> b!961749 (=> (not res!643742) (not e!542394))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33619 0))(
  ( (V!33620 (val!10789 Int)) )
))
(declare-datatypes ((ValueCell!10257 0))(
  ( (ValueCellFull!10257 (v!13347 V!33619)) (EmptyCell!10257) )
))
(declare-datatypes ((array!59041 0))(
  ( (array!59042 (arr!28385 (Array (_ BitVec 32) ValueCell!10257)) (size!28865 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59041)

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!961749 (= res!643742 (and (= (size!28865 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28864 _keys!1686) (size!28865 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!961750 () Bool)

(declare-fun res!643737 () Bool)

(assert (=> b!961750 (=> (not res!643737) (not e!542394))))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(assert (=> b!961750 (= res!643737 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28864 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28864 _keys!1686))))))

(declare-fun b!961751 () Bool)

(declare-fun e!542395 () Bool)

(declare-fun tp_is_empty!21477 () Bool)

(assert (=> b!961751 (= e!542395 tp_is_empty!21477)))

(declare-fun b!961752 () Bool)

(assert (=> b!961752 (= e!542394 false)))

(declare-fun lt!430761 () Bool)

(declare-fun minValue!1342 () V!33619)

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!33619)

(declare-datatypes ((tuple2!13944 0))(
  ( (tuple2!13945 (_1!6982 (_ BitVec 64)) (_2!6982 V!33619)) )
))
(declare-datatypes ((List!19826 0))(
  ( (Nil!19823) (Cons!19822 (h!20984 tuple2!13944) (t!28197 List!19826)) )
))
(declare-datatypes ((ListLongMap!12655 0))(
  ( (ListLongMap!12656 (toList!6343 List!19826)) )
))
(declare-fun contains!5397 (ListLongMap!12655 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3528 (array!59039 array!59041 (_ BitVec 32) (_ BitVec 32) V!33619 V!33619 (_ BitVec 32) Int) ListLongMap!12655)

(assert (=> b!961752 (= lt!430761 (contains!5397 (getCurrentListMap!3528 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28384 _keys!1686) i!803)))))

(declare-fun res!643738 () Bool)

(assert (=> start!82570 (=> (not res!643738) (not e!542394))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82570 (= res!643738 (validMask!0 mask!2110))))

(assert (=> start!82570 e!542394))

(assert (=> start!82570 true))

(declare-fun e!542397 () Bool)

(declare-fun array_inv!21917 (array!59041) Bool)

(assert (=> start!82570 (and (array_inv!21917 _values!1400) e!542397)))

(declare-fun array_inv!21918 (array!59039) Bool)

(assert (=> start!82570 (array_inv!21918 _keys!1686)))

(assert (=> start!82570 tp!65146))

(assert (=> start!82570 tp_is_empty!21477))

(declare-fun b!961753 () Bool)

(declare-fun res!643741 () Bool)

(assert (=> b!961753 (=> (not res!643741) (not e!542394))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!961753 (= res!643741 (validKeyInArray!0 (select (arr!28384 _keys!1686) i!803)))))

(declare-fun b!961754 () Bool)

(declare-fun e!542396 () Bool)

(assert (=> b!961754 (= e!542396 tp_is_empty!21477)))

(declare-fun b!961755 () Bool)

(assert (=> b!961755 (= e!542397 (and e!542396 mapRes!34210))))

(declare-fun condMapEmpty!34210 () Bool)

(declare-fun mapDefault!34210 () ValueCell!10257)

(assert (=> b!961755 (= condMapEmpty!34210 (= (arr!28385 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10257)) mapDefault!34210)))))

(declare-fun mapNonEmpty!34210 () Bool)

(declare-fun tp!65145 () Bool)

(assert (=> mapNonEmpty!34210 (= mapRes!34210 (and tp!65145 e!542395))))

(declare-fun mapKey!34210 () (_ BitVec 32))

(declare-fun mapRest!34210 () (Array (_ BitVec 32) ValueCell!10257))

(declare-fun mapValue!34210 () ValueCell!10257)

(assert (=> mapNonEmpty!34210 (= (arr!28385 _values!1400) (store mapRest!34210 mapKey!34210 mapValue!34210))))

(declare-fun b!961756 () Bool)

(declare-fun res!643739 () Bool)

(assert (=> b!961756 (=> (not res!643739) (not e!542394))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59039 (_ BitVec 32)) Bool)

(assert (=> b!961756 (= res!643739 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(assert (= (and start!82570 res!643738) b!961749))

(assert (= (and b!961749 res!643742) b!961756))

(assert (= (and b!961756 res!643739) b!961748))

(assert (= (and b!961748 res!643740) b!961750))

(assert (= (and b!961750 res!643737) b!961753))

(assert (= (and b!961753 res!643741) b!961752))

(assert (= (and b!961755 condMapEmpty!34210) mapIsEmpty!34210))

(assert (= (and b!961755 (not condMapEmpty!34210)) mapNonEmpty!34210))

(get-info :version)

(assert (= (and mapNonEmpty!34210 ((_ is ValueCellFull!10257) mapValue!34210)) b!961751))

(assert (= (and b!961755 ((_ is ValueCellFull!10257) mapDefault!34210)) b!961754))

(assert (= start!82570 b!961755))

(declare-fun m!891645 () Bool)

(assert (=> b!961748 m!891645))

(declare-fun m!891647 () Bool)

(assert (=> b!961756 m!891647))

(declare-fun m!891649 () Bool)

(assert (=> mapNonEmpty!34210 m!891649))

(declare-fun m!891651 () Bool)

(assert (=> start!82570 m!891651))

(declare-fun m!891653 () Bool)

(assert (=> start!82570 m!891653))

(declare-fun m!891655 () Bool)

(assert (=> start!82570 m!891655))

(declare-fun m!891657 () Bool)

(assert (=> b!961752 m!891657))

(declare-fun m!891659 () Bool)

(assert (=> b!961752 m!891659))

(assert (=> b!961752 m!891657))

(assert (=> b!961752 m!891659))

(declare-fun m!891661 () Bool)

(assert (=> b!961752 m!891661))

(assert (=> b!961753 m!891659))

(assert (=> b!961753 m!891659))

(declare-fun m!891663 () Bool)

(assert (=> b!961753 m!891663))

(check-sat (not b_next!18675) (not b!961756) tp_is_empty!21477 (not start!82570) (not b!961752) (not b!961748) (not mapNonEmpty!34210) b_and!30181 (not b!961753))
(check-sat b_and!30181 (not b_next!18675))
