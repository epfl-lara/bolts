; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93654 () Bool)

(assert start!93654)

(declare-fun b!1059252 () Bool)

(declare-fun res!707708 () Bool)

(declare-fun e!602880 () Bool)

(assert (=> b!1059252 (=> (not res!707708) (not e!602880))))

(declare-datatypes ((List!22545 0))(
  ( (Nil!22542) (Cons!22541 (h!23750 (_ BitVec 64)) (t!31859 List!22545)) )
))
(declare-fun noDuplicate!1591 (List!22545) Bool)

(assert (=> b!1059252 (= res!707708 (noDuplicate!1591 Nil!22542))))

(declare-fun b!1059253 () Bool)

(declare-fun res!707713 () Bool)

(assert (=> b!1059253 (=> (not res!707713) (not e!602880))))

(declare-datatypes ((array!66878 0))(
  ( (array!66879 (arr!32146 (Array (_ BitVec 32) (_ BitVec 64))) (size!32683 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!66878)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!66878 (_ BitVec 32)) Bool)

(assert (=> b!1059253 (= res!707713 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1059254 () Bool)

(declare-fun e!602883 () Bool)

(declare-fun tp_is_empty!24935 () Bool)

(assert (=> b!1059254 (= e!602883 tp_is_empty!24935)))

(declare-fun mapNonEmpty!39064 () Bool)

(declare-fun mapRes!39064 () Bool)

(declare-fun tp!74871 () Bool)

(declare-fun e!602882 () Bool)

(assert (=> mapNonEmpty!39064 (= mapRes!39064 (and tp!74871 e!602882))))

(declare-datatypes ((V!38381 0))(
  ( (V!38382 (val!12518 Int)) )
))
(declare-datatypes ((ValueCell!11764 0))(
  ( (ValueCellFull!11764 (v!15128 V!38381)) (EmptyCell!11764) )
))
(declare-fun mapRest!39064 () (Array (_ BitVec 32) ValueCell!11764))

(declare-fun mapKey!39064 () (_ BitVec 32))

(declare-datatypes ((array!66880 0))(
  ( (array!66881 (arr!32147 (Array (_ BitVec 32) ValueCell!11764)) (size!32684 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66880)

(declare-fun mapValue!39064 () ValueCell!11764)

(assert (=> mapNonEmpty!39064 (= (arr!32147 _values!955) (store mapRest!39064 mapKey!39064 mapValue!39064))))

(declare-fun b!1059256 () Bool)

(declare-fun e!602879 () Bool)

(assert (=> b!1059256 (= e!602880 e!602879)))

(declare-fun res!707710 () Bool)

(assert (=> b!1059256 (=> res!707710 e!602879)))

(declare-fun contains!6228 (List!22545 (_ BitVec 64)) Bool)

(assert (=> b!1059256 (= res!707710 (contains!6228 Nil!22542 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1059257 () Bool)

(assert (=> b!1059257 (= e!602879 (contains!6228 Nil!22542 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1059258 () Bool)

(assert (=> b!1059258 (= e!602882 tp_is_empty!24935)))

(declare-fun mapIsEmpty!39064 () Bool)

(assert (=> mapIsEmpty!39064 mapRes!39064))

(declare-fun b!1059259 () Bool)

(declare-fun res!707711 () Bool)

(assert (=> b!1059259 (=> (not res!707711) (not e!602880))))

(assert (=> b!1059259 (= res!707711 (and (bvsle #b00000000000000000000000000000000 (size!32683 _keys!1163)) (bvslt (size!32683 _keys!1163) #b01111111111111111111111111111111)))))

(declare-fun b!1059260 () Bool)

(declare-fun res!707709 () Bool)

(assert (=> b!1059260 (=> (not res!707709) (not e!602880))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1059260 (= res!707709 (and (= (size!32684 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32683 _keys!1163) (size!32684 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!707712 () Bool)

(assert (=> start!93654 (=> (not res!707712) (not e!602880))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93654 (= res!707712 (validMask!0 mask!1515))))

(assert (=> start!93654 e!602880))

(assert (=> start!93654 true))

(declare-fun e!602881 () Bool)

(declare-fun array_inv!24762 (array!66880) Bool)

(assert (=> start!93654 (and (array_inv!24762 _values!955) e!602881)))

(declare-fun array_inv!24763 (array!66878) Bool)

(assert (=> start!93654 (array_inv!24763 _keys!1163)))

(declare-fun b!1059255 () Bool)

(assert (=> b!1059255 (= e!602881 (and e!602883 mapRes!39064))))

(declare-fun condMapEmpty!39064 () Bool)

(declare-fun mapDefault!39064 () ValueCell!11764)

